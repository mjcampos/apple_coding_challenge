class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name, null: false, index: true
      t.references :kind, null: false
      t.datetime :delivery_at
      t.text :description
      t.integer :category

      t.timestamps
    end
  end
end
