json.array!(@votes) do |vote|
  json.extract! vote, :id, :number, :number_of_invalid, :constituency_id
  json.url vote_url(vote, format: :json)
end
