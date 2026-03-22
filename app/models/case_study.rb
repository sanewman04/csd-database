class CaseStudy < ApplicationRecord
  belongs_to :patient
  has_many :case_study_authors
  has_many :authors, through: :case_study_authors
  has_many :tags
  has_many :documents
  has_many :categories
end