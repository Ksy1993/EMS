class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :events

   after_create :signup_confirmation
   def signup_confirmation
   	  UserMailer.signup_confirmation(self).deliver
   end
 
end
