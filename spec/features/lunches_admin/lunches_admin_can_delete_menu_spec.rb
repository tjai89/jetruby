include Warden::Test::Helpers
Warden.test_mode!

feature 'Lunches Admin delete menu', :devise, :js do

  after(:each) do
    Warden.test_reset!
  end

  scenario "lunches admin can delete menu" do
    admin = FactoryGirl.create(:lunches_admin)
    menu = FactoryGirl.create(:menu)
    login_as(admin)
    visit menus_path  
    click_link 'Destroy'
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content 'Menu was successfully destroyed.'
  end

end


