class VendorsTypesController < ApplicationController
	before_action :set_vendors_type, only: [:edit, :update, :destroy]
	before_action :authenticate_user!

	def index
		@vendors_types = VendorsType.all
	end

	def show
	end

	def new
		@vendors_type = VendorsType.new
	end

	def edit
	end
end