class Product < ActiveRecord::Base
	has_many :orders, dependent: :destroy 

	validates :title, presence: true, length: { minimum: 5 }
end
