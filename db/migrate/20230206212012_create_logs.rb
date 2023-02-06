class CreateLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :logs do |t|
      t.references :object, polymorphic: true, null: false
      t.string :severity
      t.string :body

      t.timestamps
    end
  end
end
