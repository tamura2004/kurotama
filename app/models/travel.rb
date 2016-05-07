class Travel < ActiveRecord::Base
  include Parameterable

  belongs_to :pc
  belongs_to :map
end
