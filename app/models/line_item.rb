class LineItem < ActiveRecord::Base
  belongs_to :menu
  belongs_to :cart

  # validates :category, uniqueness: {scope: [:menu, :cart_id]}
  validate :uniq_dish_category 

  def total_price
    menu.price * quantity
  end

  private

  CATEGORIES = ["First course", "Main course", "Drink"]
  def uniq_dish_category   
    if CATEGORIES.delete(self.menu.dish_category) ==  self.menu.dish_category
      CATEGORIES.delete(self.menu.dish_category)
      true 
    else CATEGORIES.delete(self.menu.dish_category) == nil || CATEGORIES == []
      errors.add(:base, 'You can chose only one item in category.')
    end
  end
end

