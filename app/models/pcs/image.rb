class Pcs::Image
  include ActiveModel::Model
  include Parameterable

  attr_accessor :source, :imageable_id, :imageable_type

  def attributes
    {
      source: source,
      imageable_id: imageable_id,
      imageable_type: imageable_type
    }.compact
  end

end
