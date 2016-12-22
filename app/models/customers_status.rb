class CustomersStatus < ApplicationRecord
	validates_presence_of :title, :description
	has_many :customer
end
