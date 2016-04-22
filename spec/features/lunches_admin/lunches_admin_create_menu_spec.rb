include Warden::Test::Helpers
Warden.test_mode!

feature 'Lunches Admin create menu', :devise do

  after(:each) do
    Warden.test_reset!
  end

  scenario "lunches admin can create new menu only for today" do
    admin = FactoryGirl.create(:lunches_admin)
    login_as(admin)
    visit new_menu_path
    fill_in "Order date",    :with => Time.now.strftime("%A")
    fill_in "Title",         :with => "Borsh"
    fill_in "Description",   :with => "Mmm, yamy"    
    fill_in "Price",         :with => 99.99 
    choose('First course')
    click_button 'Create Menu'
    expect(page).to have_content "Menu was successfully created."
  end


  scenario "lunches admin can't create new menu for another day" do
    admin = FactoryGirl.create(:lunches_admin)
    login_as(admin)
    visit new_menu_path
    fill_in "Order date",   :with => "Not today"
    fill_in "Title",        :with => "Borsh"
    fill_in "Description",  :with => "Mmm, yamy"    
    fill_in "Price",        :with => 99.99    
    click_button 'Create Menu'
    expect(page).to have_content "is not included in the list"
  end

end
