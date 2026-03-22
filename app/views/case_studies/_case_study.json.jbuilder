json.extract! case_study, :id, :title, :developmental_acquired, :date_submitted, :date_reviewed, :last_updated, :case_summary_statement, :backgroundinfo_subjective_pastmedicalhistory, :tools_tests_assessments_skills_evaluationsummary, :objectives_observations, :diagnostic_statement, :recommendations_plan, :patient_id, :created_at, :updated_at
json.url case_study_url(case_study, format: :json)
