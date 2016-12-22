class Vendor < ApplicationRecord
	validates_presence_of :company_name, :phone_number, :email_address
	belongs_to :vendors_status
	belongs_to :vendors_type
end