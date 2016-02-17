class Menu < ActiveRecord::Base
  validates :order_date, :inclusion => { :in => [Time.now.strftime("%A")] }  
  validates :title, :description, :price, presence: true 

    scope :sunday,    -> {where(:order_date =>"Sunday")} 
    scope :monday,    -> {where(:order_date =>"Monday")}
    scope :tuesday,   -> {where(:order_date =>"Tuesday")} 
    scope :wednesday, -> {where(:order_date =>"Wednesday")} 
    scope :thursday,  -> {where(:order_date =>"Thursday")} 
    scope :friday,    -> {where(:order_date =>"Friday")}
    scope :saturday,  -> {where(:order_date =>"Saturday")} 

end
