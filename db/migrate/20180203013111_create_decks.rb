class CreateDecks < ActiveRecord::Migration[5.1]
  def change
    create_table :decks do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.boolean :favorite
      t.references :user

      t.timestamps
    end
  end
end