class ChangeOrderDateForMenus < ActiveRecord::Migration
  def change
    change_column :menus, :order_date, :string
  end
end
