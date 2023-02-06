class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
    add_index :roles, :name, unique: true
  end
end
