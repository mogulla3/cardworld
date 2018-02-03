class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.text :front
      t.text :back
      t.integer :status
      t.references :deck

      t.timestamps
    end
  end
end
