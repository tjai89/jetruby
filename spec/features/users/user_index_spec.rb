include Warden::Test::Helpers
Warden.test_mode!

# Feature: User index page
#   As a user
#   I can't see a list of registered users 
feature 'User index page', :devise do

  after(:each) do
    Warden.test_reset!
  end

  # Scenario: User listed on index page
  #   Given I am signed in
  #   When I visit the user index page
  #   Then I see my own email address
  scenario 'user cant sees registered users' do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
    visit users_path
    expect(page).to have_content 'Access denied.'
  end

end
