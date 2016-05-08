class Menu
  include ActiveModel::Model
  include Parameterable

  attr_accessor :name

  def attributes
    {
      name: name
    }.compact
  end

end
