class User < ActiveRecord::Base
<<<<<<< HEAD
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :products
  has_many :bookings
=======
  has_many :products, dependent: :destroy
  has_many :bookings, dependent: :destroy
>>>>>>> 21f345ba0c1c6a1973f14e79960110616251640f

end
