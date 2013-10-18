json.array!(@ideas) do |idea|
  json.extract! idea, :title, :description
  json.url idea_url(idea, format: :json)
end
