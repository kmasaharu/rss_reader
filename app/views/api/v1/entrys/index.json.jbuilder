json.array!(@entrys) do |entry|
  	json.id				entry.id
  	json.site_id		entry.site_id
  	json.title			entry.title
  	json.url			entry.url
  	json.view_count		entry.view_count
  	json.public_date	entry.public_date.to_s
  	json.created_at		entry.created_at.to_s(:json)
end