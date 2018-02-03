class CreateDeckTags < ActiveRecord::Migration[5.1]
  def change
    create_table :deck_tags do |t|
      t.references :deck
      t.references :tag

      t.timestamps
    end
  end
end
