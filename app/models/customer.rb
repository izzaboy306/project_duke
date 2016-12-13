class Customer < ApplicationRecord
	validates_presence_of :company_name, :phone_number, :email_address
end