module CurrentCart
  extend ActiveSupport::Concern 
  
  private

  # The set_cart() getting the :cart_id from the session object and
  # then find a corresponding cart by its ID. If :cart_id is
  # not found , then it create a new Cart 
  def set_cart 
    @cart = Cart.find(session[:cart_id])  
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end
end