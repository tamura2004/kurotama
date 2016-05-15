class Items::Soul < Item
  after_initialize :set_default_value

  def self.create_from_mob(mob)
    create do |soul|
      soul.owner = mob.map
      soul.soul = mob.soul
      soul.name = "#{mob.name}のソウル"
    end
  end

  def set_default_value
    self.image ||= "item/ソウル.png"
  end
end

class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|

      t.string :type
      t.string :owner

      t.string :name

      t.integer :level
      t.integer :soul

      t.timestamps null: false
    end
  end
end
