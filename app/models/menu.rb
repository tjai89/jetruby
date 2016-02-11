class Menu < ActiveRecord::Base
  validates :order_date, :inclusion => { :in => [Time.now.strftime("%A")] }   
end
