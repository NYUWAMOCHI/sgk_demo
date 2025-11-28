# Clear existing data
GachaCard.destroy_all

# Create gacha cards with different rarities and weights
GachaCard.create!([
  { name: "コモンカード1", rarity: 0, weight: 40, description: "よくあるカード", image_url: "/common1.png" },
  { name: "コモンカード2", rarity: 0, weight: 30, description: "よくあるカード", image_url: "/common2.png" },

  { name: "レアカード1", rarity: 1, weight: 15, description: "珍しいカード", image_url: "/rare1.png" },
  { name: "レアカード2", rarity: 1, weight: 10, description: "珍しいカード", image_url: "/rare2.png" },

  { name: "スーパーレアカード1", rarity: 2, weight: 4, description: "非常に珍しいカード", image_url: "/super_rare1.png" },
  { name: "スーパーレアカード2", rarity: 2, weight: 1, description: "非常に珍しいカード", image_url: "/super_rare2.png" },

  { name: "ウルトラレアカード", rarity: 3, weight: 1, description: "極めて珍しいカード", image_url: "/ultra_rare.png" }
])

puts "Gacha cards created successfully!"
