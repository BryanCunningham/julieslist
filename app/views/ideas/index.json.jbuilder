json.array!(@ideas) do |idea|
  json.extract! idea, 
  json.url idea_url(idea, format: :json)
end
