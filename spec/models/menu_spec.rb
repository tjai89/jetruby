require 'rails_helper'

describe Menu do

  before(:each) { @menu = Menu.new(title: "Borsh") }

  subject { @menu }

  it { should respond_to(:title) }

  it "#title returns a string" do
    expect(@menu.title).to match "Borsh"
  end
end