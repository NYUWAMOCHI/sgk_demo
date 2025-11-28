require 'sgk'

class GachasController < ApplicationController
  def index
  end

  def draw
    engine = ::SGK::Gacha::Engine.new(GachaCard.all)
    card = engine.draw
    render json: {
      id: card.id,
      name: card.name,
      rarity: card.rarity,
      description: card.description,
      image_url: card.image_url
    }
  end

  def draw_multiple
    count = params[:count].to_i.clamp(1, 10)
    engine = ::SGK::Gacha::Engine.new(GachaCard.all)
    cards = engine.draw_multiple(count)

    render json: {
      cards: cards.map { |card|
        {
          id: card.id,
          name: card.name,
          rarity: card.rarity,
          description: card.description,
          image_url: card.image_url
        }
      }
    }
  end

  def probabilities
    engine = ::SGK::Gacha::Engine.new(GachaCard.all)

    render json: engine.probabilities
  end
end
