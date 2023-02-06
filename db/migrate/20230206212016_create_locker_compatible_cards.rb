class CreateLockerCompatibleCards < ActiveRecord::Migration[7.0]
  def change
    create_table :locker_compatible_cards do |t|
      t.references :locker, null: false, foreign_key: true
      t.references :card_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
