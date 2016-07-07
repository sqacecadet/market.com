json.array!(@partners) do |partner|
  json.extract! partner, :id, :name, :price, :TypePartner_id, :documents_id
  json.url partner_url(partner, format: :json)
end
