class ActionForm
  include ActiveModel::Model
  include Parameterable

  attr_accessor :name, :pc_id, :mob_id, :boss_id, :item_id, :map_id

  def attributes
    {
      name: name,
      pc_id: pc_id,
      mob_id: mob_id,
      boss_id: boss_id,
      item_id: item_id,
      map_id: map_id
    }.compact
  end

end
