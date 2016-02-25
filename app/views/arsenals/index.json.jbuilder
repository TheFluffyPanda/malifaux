json.array!(@arsenals) do |arsenal|
  json.extract! arsenal, :id
  json.url arsenal_url(arsenal, format: :json)
end
