class Customer < ApplicationRecord
	validates_presence_of :company_name, :phone_number, :email_address
	belongs_to :customers_status
end