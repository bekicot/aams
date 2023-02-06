class CreateAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :assets do |t|
      t.string :name
      t.references :location, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
    add_index :assets, :name, unique: true
  end
end
