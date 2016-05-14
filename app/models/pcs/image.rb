class Pcs::Image
  include ActiveModel::Model
  include Parameterable

  attr_accessor :source

  def attributes
    {
      source: source
    }.compact
  end

end
