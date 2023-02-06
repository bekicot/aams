class CreateLockers < ActiveRecord::Migration[7.0]
  def change
    create_table :lockers do |t|
      t.integer :mode
      t.references :account, null: false, foreign_key: true
      t.bigint :serial_number
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
