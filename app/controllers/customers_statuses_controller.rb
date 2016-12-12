class CustomersStatusesController < ApplicationController
  before_action :set_customers_status, only: [:show, :edit, :update, :destroy]

  # GET /customers_statuses
  # GET /customers_statuses.json
  def index
    @customers_statuses = CustomersStatus.all
  end

  # GET /customers_statuses/1
  # GET /customers_statuses/1.json
  def show
  end

  # GET /customers_statuses/new
  def new
    @customers_status = CustomersStatus.new
  end

  # GET /customers_statuses/1/edit
  def edit
  end

  # POST /customers_statuses
  # POST /customers_statuses.json
  def create
    @customers_status = CustomersStatus.new(customers_status_params)

    respond_to do |format|
      if @customers_status.save
        format.html { redirect_to @customers_status, notice: 'Customers status was successfully created.' }
        format.json { render :show, status: :created, location: @customers_status }
      else
        format.html { render :new }
        format.json { render json: @customers_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers_statuses/1
  # PATCH/PUT /customers_statuses/1.json
  def update
    respond_to do |format|
      if @customers_status.update(customers_status_params)
        format.html { redirect_to @customers_status, notice: 'Customers status was successfully updated.' }
        format.json { render :show, status: :ok, location: @customers_status }
      else
        format.html { render :edit }
        format.json { render json: @customers_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers_statuses/1
  # DELETE /customers_statuses/1.json
  def destroy
    @customers_status.destroy
    respond_to do |format|
      format.html { redirect_to customers_statuses_url, notice: 'Customers status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customers_status
      @customers_status = CustomersStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customers_status_params
      params.fetch(:customers_status, {})
    end
end
