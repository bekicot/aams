class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.bigint :uid
      t.references :card_type, null: false, foreign_key: true
      t.boolean :default
      t.references :user, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
