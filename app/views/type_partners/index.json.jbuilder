json.array!(@type_partners) do |type_partner|
  json.extract! type_partner, :id, :type, :description, :documents_id
  json.url type_partner_url(type_partner, format: :json)
end
