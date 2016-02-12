FactoryGirl.define do
  factory :menu do
    order_date Time.now.strftime("%A")
    title "Borsh"
    description "delicious"
    price "9.99"
  end
end
