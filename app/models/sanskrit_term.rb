class SanskritTerm < ApplicationRecord
  has_many :sanskrit_terms, -> { order "sanskrit_term asc"}
end
