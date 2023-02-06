class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
    add_index :locations, :name, unique: true
  end
end
