FactoryGirl.define do
  factory :user do
    name "Test User"
    email "test@example.com"
    password "please123"
    admin false

    factory :lunches_admin do
      admin true
    end

  end
end
