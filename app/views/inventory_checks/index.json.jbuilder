json.array!(@inventory_checks) do |inventory_check|
  json.extract! inventory_check, 
  json.url inventory_check_url(inventory_check, format: :json)
end