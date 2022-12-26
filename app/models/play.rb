class Play < ApplicationRecord
  has_many :monologues
  has_many :collections
  has_many :users, through: :collections
end
