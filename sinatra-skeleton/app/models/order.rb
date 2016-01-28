class Order < ActiveRecord::Base
  belongs_to :orderer, :class_name => 'User'
  belongs_to :deliverer, :class_name => 'User'

  validates :delivery_status, numericality: { only_integer: true,
                                              maximum: 3,
                                              minimum: 1}
  validates :cuisine, presence: true
  validates :destination, presence: true
  validates :price, numericality: { only_integer: true }
  
  validate :expiration_date_cannot_be_in_the_past

  def expiration_date_cannot_be_in_the_past
    errors.add(:delivery_date, "can't be in the past") if
      !delivery_date.blank? and delivery_date < Date.today
  end

end