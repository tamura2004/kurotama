class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :level
      t.string :title
      t.string :message

      t.timestamps null: false
    end
  end
end
