class User < ApplicationRecord
    has_many :collections
    has_many :plays, through: :collections
end
