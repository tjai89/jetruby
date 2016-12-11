class AddCategoryToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :category, :string, default: ["First course", "Main course", "Drink"]
  end
end
