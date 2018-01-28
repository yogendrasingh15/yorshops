class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :messages
  has_many :chatboxes, through: :messages
  validates :name, presence: true, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         shop_keeper = 1
         shop_user = 2
         USER_TYPES_ARR = [["Shop Keeper", shop_keeper],["Shop User", shop_user]]
 end