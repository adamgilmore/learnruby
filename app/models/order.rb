class Order < ActiveRecord::Base
  belongs_to :product

  validates :count, numericality: { only_integer: true }
end
