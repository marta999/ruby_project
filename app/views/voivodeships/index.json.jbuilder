json.array!(@voivodeships) do |voivodeship|
  json.extract! voivodeship, :id, :name, :number_of_seats
  json.url voivodeship_url(voivodeship, format: :json)
end
