class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :sex
      t.boolean :premium

      t.timestamps
    end
    add_index :users, :name, unique: true
  end
end
