include Warden::Test::Helpers
Warden.test_mode!

feature 'User buy dishes in weekday page', :devise do

  after(:each) do
    Warden.test_reset!
  end

  scenario 'User can add to cart dish from weekdays menu' do
    user = FactoryGirl.create(:user)
    dish = FactoryGirl.create(:menu)
    login_as(user, :scope => :user)
    visit root_path
    expect(page).to have_content 'Weekdays menu'
    click_link Time.now.strftime("%A")
    expect(page).to have_content dish.title
  end
end
