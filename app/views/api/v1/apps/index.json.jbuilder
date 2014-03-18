json.array!(@apps) do |app|
  json.extract! app, :id, :name, :package_name
end