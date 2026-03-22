require "test_helper"

class CaseStudiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @case_study = case_studies(:one)
  end

  test "should get index" do
    get case_studies_url
    assert_response :success
  end

  test "should get new" do
    get new_case_study_url
    assert_response :success
  end

  test "should create case_study" do
    assert_difference("CaseStudy.count") do
      post case_studies_url, params: { case_study: { backgroundinfo_subjective_pastmedicalhistory: @case_study.backgroundinfo_subjective_pastmedicalhistory, case_summary_statement: @case_study.case_summary_statement, date_reviewed: @case_study.date_reviewed, date_submitted: @case_study.date_submitted, developmental_acquired: @case_study.developmental_acquired, diagnostic_statement: @case_study.diagnostic_statement, last_updated: @case_study.last_updated, objectives_observations: @case_study.objectives_observations, patient_id: @case_study.patient_id, recommendations_plan: @case_study.recommendations_plan, title: @case_study.title, tools_tests_assessments_skills_evaluationsummary: @case_study.tools_tests_assessments_skills_evaluationsummary } }
    end

    assert_redirected_to case_study_url(CaseStudy.last)
  end

  test "should show case_study" do
    get case_study_url(@case_study)
    assert_response :success
  end

  test "should get edit" do
    get edit_case_study_url(@case_study)
    assert_response :success
  end

  test "should update case_study" do
    patch case_study_url(@case_study), params: { case_study: { backgroundinfo_subjective_pastmedicalhistory: @case_study.backgroundinfo_subjective_pastmedicalhistory, case_summary_statement: @case_study.case_summary_statement, date_reviewed: @case_study.date_reviewed, date_submitted: @case_study.date_submitted, developmental_acquired: @case_study.developmental_acquired, diagnostic_statement: @case_study.diagnostic_statement, last_updated: @case_study.last_updated, objectives_observations: @case_study.objectives_observations, patient_id: @case_study.patient_id, recommendations_plan: @case_study.recommendations_plan, title: @case_study.title, tools_tests_assessments_skills_evaluationsummary: @case_study.tools_tests_assessments_skills_evaluationsummary } }
    assert_redirected_to case_study_url(@case_study)
  end

  test "should destroy case_study" do
    assert_difference("CaseStudy.count", -1) do
      delete case_study_url(@case_study)
    end

    assert_redirected_to case_studies_url
  end
end
