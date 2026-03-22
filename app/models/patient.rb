class Patient < ApplicationRecord
  has_many :case_studies
end