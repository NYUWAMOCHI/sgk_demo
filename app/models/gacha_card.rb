class GachaCard < ApplicationRecord
  validates :name, :rarity, presence: true
  validates :weight, numericality: { greater_than: 0 }

  enum :rarity, { common: 0, rare: 1, super_rare: 2, ultra_rare: 3 }
end
