json.array!(@constituencies) do |constituency|
  json.extract! constituency, :id, :name, :number_of_voters, :voivodeship_id
  json.url constituency_url(constituency, format: :json)
end
