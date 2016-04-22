class User < ActiveRecord::Base


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :set_admin

  private
  def set_admin
   if  User.count == 1
     User.first.update_attribute(:admin, true)
   else
     return true
   end
  end
end
