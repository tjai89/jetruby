describe User do

  before(:each) { @user = User.new(email: 'user@example.com') }

  subject { @user }

  it { should respond_to(:email) }

  it "#email returns a string" do
    expect(@user.email).to match 'user@example.com'
  end

  it "sets first registered user as admin" do
    user1 = FactoryGirl.create(:user, :email => 'sample1@mail.com')
  	user2 = FactoryGirl.create(:user, :email => 'sample2@mail.com')
  	user3 = FactoryGirl.create(:user, :email => 'sample3@mail.com')
  	expect(User.first).to be_admin
  	expect(User.second).not_to be_admin
  end

end
