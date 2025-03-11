class CreateBots < ActiveRecord::Migration[8.0]
  def change
    create_table :bots do |t|
      t.string :name
      t.string :weapon
      t.string :drive
      t.integer :battery
      t.integer :img_id
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
