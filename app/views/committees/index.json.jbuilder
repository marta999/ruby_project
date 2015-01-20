json.array!(@committees) do |committee|
  json.extract! committee, :id, :name, :logo_id
  json.url committee_url(committee, format: :json)
end
