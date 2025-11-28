class CreateGachaCards < ActiveRecord::Migration[8.0]
  def change
    create_table :gacha_cards do |t|
      t.string :name, null: false
      t.string :rarity, null: false
      t.integer :weight, null: false, default: 1
      t.text :description
      t.string :image_url

      t.timestamps
    end

    add_index :gacha_cards, :rarity
    add_index :gacha_cards, :weight
  end
end
