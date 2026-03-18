class CreateDocuments < ActiveRecord::Migration[8.1]
  def change
    create_table :documents do |t|
      t.references :case_study, null: false, foreign_key: true
      t.string :document
      t.text :categories

      t.timestamps
    end
  end
end
