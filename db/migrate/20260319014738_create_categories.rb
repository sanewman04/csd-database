class CreateCategories < ActiveRecord::Migration[8.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.boolean :asha_big_9

      t.timestamps
    end
  end
end
