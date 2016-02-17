include Warden::Test::Helpers
Warden.test_mode!

# Feature: User delete
#   As a user
#   I want to delete my user profile
#   So I can close my account
feature 'User can see dishes in days menu', :devise, :js do

  after(:each) do
    Warden.test_reset!
  end

  # Scenario: User can delete own account
  #   Given I am signed in
  #   When I delete my account
  #   Then I should see an account deleted message
  scenario 'User can see dishes in today days menu' do
    user = FactoryGirl.create(:user)
    dish = FactoryGirl.create(:menu)
    login_as(user, :scope => :user)
    visit root_path
    click_link Time.now.strftime("%A")
    expect(page).to have_content dish.title
  end

  scenario 'User can see dishes in past days menu' do
    user = FactoryGirl.create(:user)
    dish = FactoryGirl.create(:past_menu,
                              order_date: "Sunday")
    dish.save(:validate => false)
    login_as(user, :scope => :user)
    visit root_path
    click_link "Sunday"
    expect(page).to have_content dish.title
  end


end




