class ChangeGachaCardRarityToInteger < ActiveRecord::Migration[8.0]
  def change
    change_column :gacha_cards, :rarity, :integer, default: 0, null: false
  end
end
