json.array!(@palaces) do |palace|
  	json.id				palace.id
  	json.site_id		palace.app_id
  	json.title			palace.title
  	json.url			palace.url
  	json.view_count		palace.view_count
  	json.locked			palace.locked
  	json.created_at		palace.created_at.to_s(:json)
end