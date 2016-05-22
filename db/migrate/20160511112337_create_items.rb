class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|

      t.string :type
      t.references :owner, polymorphic: true

      t.string :name
      t.string :image
      t.integer :level
      t.integer :soul
      t.boolean :equiped, default: false

      t.timestamps null: false
    end
  end
end
