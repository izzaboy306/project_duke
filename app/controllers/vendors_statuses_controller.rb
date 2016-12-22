class VendorsStatusesController < ApplicationController
	before_action :set_vendors_status, only: [:edit, :update, :destroy]
	before_action :authenticate_user!
end