json.array!(@boarding_cards) do |boarding_card|
  json.extract! boarding_card, :journey, :from, :to, :transport_mode, :travel_locator, :seat, :gate, :baggage_reclaim, :directions
  json.url boarding_card_url(boarding_card, format: :json)
end
