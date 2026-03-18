class CreateCaseStudies < ActiveRecord::Migration[8.1]
  def change
    create_table :case_studies do |t|
      t.string :title
      t.datetime :date_submitted
      t.string :developmental_acquired
      t.datetime :date_reviewed
      t.datetime :last_updated
      t.text :case_summary_statement
      t.text :backgroundinfo_subjective_pastmedicalhistory
      t.text :tools_tests_assessments_skills_evaluationsummary
      t.text :objectives_observations
      t.text :diagnostic_statement
      t.text :recommendations_plan
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
