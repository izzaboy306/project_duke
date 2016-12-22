class VendorsStatusesController < ApplicationController
	before_action :set_vendors_status, only: [:edit, :update, :destroy]
	before_action :authenticate_user!

	def index
		@vendors_statuses = VendorsStatus.all
	end

	def show
	end

	def new
		@vendors_status = VendorsStatus.new
	end

	def edit
	end

	def create
		@vendors_status = VendorsStatus.new(vendors_status_params)

		respond_to do |format|
			if @vendors_status.save
				format.html { redirect_to vendors_statuses_path, notice: 'Vendor status was successfully created.' }
			else
				format.html { render :new }
			end
		end
	end

	def update
		respond_to do |format|
			if @vendors_status.update(vendors_status_params)
				format.html { redirect_to vendors_statuses_path, notice: 'Vendor status was successfully updated.' }
			else
				format.html { render :edit }
			end
		end
	end

	def destroy
		@vendors_status.destroy
		respond_to do |format|
			format.html { redirect_to vendors_statuses_path, notice: 'Vendor status was successfully updated.' }
		end
	end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_vendors_status
    @vendors_status = VendorsStatus.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def vendors_status_params
    params.require(:vendors_status).permit(:title, :description)
  end

end