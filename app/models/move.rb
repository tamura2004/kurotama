class Move < ActiveRecord::Base

  include Parameterable

  belongs_to :pc
  belongs_to :mob
  belongs_to :boss
  belongs_to :item
  belongs_to :map
end
