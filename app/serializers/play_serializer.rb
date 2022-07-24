class PlaySerializer < ActiveModel::Serializer
  attributes :id, :name, :author, :genre, :length, :num_character, :time_period, :copy_avail, :synopsis

  has_many :monologues
end
