class VendorsStatus < ApplicationRecord
	validates_presence_of :title, :description
	has_many :vendor
end