FactoryGirl.define do
  factory :menu do
    order_date Time.now.strftime("%A")
    title "Borsh"
    description "delicious"
    price "9.99"
      factory :past_menu do
        to_create {|instance| instance.save(validate: false) }
      end
  end
end
