class AddCaseStudyRefToTagsAndCategories < ActiveRecord::Migration[8.1]
  def change
    add_reference :tags, :case_study,
      null: false, foreign_key: true

    add_reference :categories, :case_study,
      null: false, foreign_key: true
  end
end