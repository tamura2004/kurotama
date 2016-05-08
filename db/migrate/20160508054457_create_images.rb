class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :imageable, index: true, polymorphic: true
      t.string :pathname

      t.timestamps null: false
    end
  end
end
