require 'rails_helper'

describe Menu do

  before(:each) { @menu = Menu.new(title: "Borsh") }

  subject { @menu }

  it { should respond_to(:title) }

  it "#title returns a string" do
    expect(@menu.title).to match "Borsh"
  end

  it "creates dishes with category" do 
  	dish = Menu.create(title: "Borsh", description: "yamy", price: "9.99", dish_category: "First course")
  	expect(dish.dish_category).to match "First course"
  end
end