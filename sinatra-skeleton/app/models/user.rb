class User < ActiveRecord::Base
  has_many :orders, :class_name => 'Order'
  has_many :deliveries, :class_name => 'Order'

  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true
  validates :address, presence: true
  validates :rating, numericality: { only_integer: true,
                                     minimum: 0,
                                     maximum: 5 }
  validates :email, presence: true
end