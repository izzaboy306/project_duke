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

	def create
		@vendors_type = VendorsType.new(vendors_types_params)

		respond_to do |format|
			if @vendors_type.save
				format.html { redirect_to vendors_types_path, notice: 'Vendor type was successfully created.' }
			else
				format.html { render :new }
			end
		end
	end

	def update
		respond_to do |format|
			if @vendors_type.update(vendors_type_params)
				format.html { redirect_to vendors_types_path, notice: 'Vendor type was successfully updated.' }
			else
				format.html { render :edit }
			end
		end
	end

	def destroy
		@vendors_type.destroy
		respond_to do |format|
			format.html { redirect_to vendors_types_path, notice: 'Vendor type was successfully updated.' }
		end
	end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_vendors_type
    @vendors_type = VendorsType.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def vendors_types_params
    params.require(:vendors_type).permit(:title, :description)
  end
end