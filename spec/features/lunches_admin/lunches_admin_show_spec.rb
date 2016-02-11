include Warden::Test::Helpers
Warden.test_mode!

feature 'Lunches Admin profile page', :devise do

  after(:each) do
    Warden.test_reset!
  end

  scenario "lunches admin can see list of registered users" do
    admin = FactoryGirl.create(:lunches_admin)
    user = FactoryGirl.create(:user, email: 'user@example.com')
    login_as(admin)
    Capybara.current_session.driver.header 'Referer', root_path
    visit users_path
    expect(page).to have_content user.email
  end

  scenario "lunches admin can see another users profile" do
    admin = FactoryGirl.create(:lunches_admin)
    user = FactoryGirl.create(:user, email: 'user@example.com')
    login_as(admin)
    Capybara.current_session.driver.header 'Referer', root_path
    visit user_path(user)
    expect(page).to have_content user.email
  end

end