class CreateBattleStats < ActiveRecord::Migration[8.0]
  def change
    create_table :battle_stats do |t|
      t.references :bot, null: false, foreign_key: { to_table: :bots }
      t.references :ai_bot, null: false, foreign_key: { to_table: :bots }
      t.references :winning_bot, null: false, foreign_key: { to_table: :bots }
      t.timestamps
    end
  end
end
