class Pcs::Move
  include ActiveModel::Model
  include Parameterable

  attr_accessor :name, :pc_id, :map_id

  def map=(obj)
    self.map_id = obj.try(:id)
  end

  def map
    @map ||= Map.find(map_id)
  end

  def attributes
    {
      name: name,
      pc_id: pc_id,
      map_id: map_id
    }.compact
  end

end
