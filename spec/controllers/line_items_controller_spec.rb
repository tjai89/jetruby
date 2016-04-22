require "rails_helper"

RSpec.describe LineItemsController, :type => :controller do
  
  it "creates line_item" do 
    l_item = LineItem.create
  end
end
