# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_03_22_024652) do
  create_table "authors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "first_name"
    t.text "last_name"
    t.datetime "updated_at", null: false
  end

  create_table "case_studies", force: :cascade do |t|
    t.text "backgroundinfo_subjective_pastmedicalhistory"
    t.text "case_summary_statement"
    t.datetime "created_at", null: false
    t.datetime "date_reviewed"
    t.datetime "date_submitted"
    t.string "developmental_acquired"
    t.text "diagnostic_statement"
    t.datetime "last_updated"
    t.text "objectives_observations"
    t.integer "patient_id", null: false
    t.text "recommendations_plan"
    t.string "title"
    t.text "tools_tests_assessments_skills_evaluationsummary"
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_case_studies_on_patient_id"
  end

  create_table "case_study_authors", force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "case_study_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_case_study_authors_on_author_id"
    t.index ["case_study_id"], name: "index_case_study_authors_on_case_study_id"
  end

  create_table "categories", force: :cascade do |t|
    t.boolean "asha_big_9"
    t.integer "case_study_id", null: false
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
    t.index ["case_study_id"], name: "index_categories_on_case_study_id"
  end

  create_table "documents", force: :cascade do |t|
    t.integer "case_study_id", null: false
    t.datetime "created_at", null: false
    t.string "document"
    t.datetime "updated_at", null: false
    t.index ["case_study_id"], name: "index_documents_on_case_study_id"
  end

  create_table "patients", force: :cascade do |t|
    t.integer "age"
    t.datetime "created_at", null: false
    t.text "current_treatment"
    t.text "diet"
    t.text "education_level"
    t.text "gender"
    t.text "medical_history"
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.integer "case_study_id", null: false
    t.datetime "created_at", null: false
    t.text "tag"
    t.datetime "updated_at", null: false
    t.index ["case_study_id"], name: "index_tags_on_case_study_id"
  end

  add_foreign_key "case_studies", "patients"
  add_foreign_key "case_study_authors", "authors"
  add_foreign_key "case_study_authors", "case_studies"
  add_foreign_key "categories", "case_studies"
  add_foreign_key "documents", "case_studies"
  add_foreign_key "tags", "case_studies"
end
