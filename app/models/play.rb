class Play < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :monologues
end
