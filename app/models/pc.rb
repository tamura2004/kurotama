class Pc < ActiveRecord::Base
  # has_many :travels
  belongs_to :map
  has_many :image, as: :imageable
end
