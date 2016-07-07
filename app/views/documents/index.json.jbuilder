json.array!(@documents) do |document|
  json.extract! document, :id, :type, :description
  json.url document_url(document, format: :json)
end
