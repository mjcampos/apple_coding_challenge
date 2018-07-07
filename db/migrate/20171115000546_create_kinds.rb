class CreateKinds < ActiveRecord::Migration[5.1]
  def change
    create_table :kinds do |t|
      t.string   "name", null: false
      t.integer  "size", null: false, default: 0
      t.boolean  "active", default: true, null: false
      t.timestamps
    end

    add_index :kinds, [:name], unique: true
  end
end
