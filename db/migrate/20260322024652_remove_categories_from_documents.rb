class RemoveCategoriesFromDocuments < ActiveRecord::Migration[8.1]
  def change
        remove_column :documents, :categories, :text
  end
end
