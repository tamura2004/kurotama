class Pcs::Name
  include ActiveModel::Model
  include Parameterable

  attr_accessor :name

  def attributes
    { name: name }
  end

end
