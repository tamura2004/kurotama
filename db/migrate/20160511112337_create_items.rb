class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|

      t.string :type
      t.string :owner
      t.string :image

      t.string :name

      t.integer :level
      t.integer :soul

      t.timestamps null: false
    end
  end
end
