json.array!(@line_items) do |line_item|
  json.extract! line_item, :id, :menu_id, :cart_id
  json.url line_item_url(line_item, format: :json)
end
