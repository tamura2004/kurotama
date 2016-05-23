class Item < ActiveRecord::Base
  after_initialize :set_default_value
  belongs_to :owner, polymorphic: true

  def owner=(name)
    if map = Map.find_by(name: name)
      super(map)
    elsif character = Character.find_by(name: name)
      super(character)
    end
  end

  def self.each_type
    %w(weapon shield armor ring spell).each do |single|
      pluralize = single.pluralize.to_sym
      type = "items/#{single}".classify
      single = single.to_sym
      yield single,pluralize,type
    end
  end

  private
    def set_default_value
      case type
      when "Items::Weapon"
        self.image ||= "item/ソード.png"

      when "Items::Shield"
        self.image ||= "item/シールド.png"

      when "Items::Armor"
        self.image ||= "item/アーマー.png"

      when "Items::Ring"
        self.image ||= "item/リング.png"

      when "Items::Soul"
        self.image ||= "item/ソウル.png"
      end
    end

end
