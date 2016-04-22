class AddDishCategoryToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :dish_category, :string
  end
end
