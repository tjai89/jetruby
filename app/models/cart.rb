class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  validates :line_items, length: {maximum: 1}

	def add_menu(menu_id)
		current_item = line_items.find_by(menu_id: menu_id)
		if current_item
			current_item.quantity += 1
		else
			current_item = line_items.build(menu_id: menu_id)
		end
		current_item
	end

	def total_price
		line_items.to_a.sum { |item| item.total_price }
	end
end


