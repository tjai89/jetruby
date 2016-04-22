class Menu < ActiveRecord::Base

  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item


  validates :order_date, :inclusion => { :in => [Time.now.strftime("%A")] } # can't create menu not for today
  validates :title, :description, :price, presence: true 

    scope :sunday,    -> {where(:order_date =>"Sunday")} 
    scope :monday,    -> {where(:order_date =>"Monday")}
    scope :tuesday,   -> {where(:order_date =>"Tuesday")} 
    scope :wednesday, -> {where(:order_date =>"Wednesday")} 
    scope :thursday,  -> {where(:order_date =>"Thursday")} 
    scope :friday,    -> {where(:order_date =>"Friday")}
    scope :saturday,  -> {where(:order_date =>"Saturday")} 


  private 
  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end 

end
