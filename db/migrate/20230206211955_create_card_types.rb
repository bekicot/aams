class CreateCardTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :card_types do |t|
      t.string :name

      t.timestamps
    end
    add_index :card_types, :name, unique: true
  end
end
