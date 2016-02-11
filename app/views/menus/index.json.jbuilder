json.array!(@menus) do |menu|
  json.extract! menu, :id, :order_date, :title, :description, :price
  json.url menu_url(menu, format: :json)
end
