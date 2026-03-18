class Author < ApplicationRecord
    has_many :case_study_authors
    has_many :case_studies, through: :case_study_authors
end
