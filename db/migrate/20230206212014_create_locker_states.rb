class CreateLockerStates < ActiveRecord::Migration[7.0]
  def change
    create_table :locker_states do |t|
      t.references :locker, null: false, foreign_key: true
      t.string :sha256_digest, limit: 64

      t.timestamps
    end
  end
end
