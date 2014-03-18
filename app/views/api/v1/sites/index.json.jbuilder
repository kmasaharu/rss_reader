json.array!(@sites) do |sites|
  json.extract! sites, :id, :app_id, :name, :url, :rss_url
end