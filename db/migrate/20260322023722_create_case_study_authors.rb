class CreateCaseStudyAuthors < ActiveRecord::Migration[8.1]
  def change
    create_table :case_study_authors do |t|
      t.references :case_study, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end