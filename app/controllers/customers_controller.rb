class CustomersController < ApplicationController
  respond_to :html, :json
  before_action :authenticate_user!
  
  def new
    @customer = Customer.new
    respond_modal_with @customer
  end

  def create
   @customer = Customer.create(customer_params)
   current_user.customers << @customer
   respond_modal_with @customer, location: customers_path
  end

  def edit
   @customer = Customer.find(params[:id])
   respond_modal_with @customer, location: customers_path
  end

  def update
   @customer  = Customer.where(id: params[:id]).update_all(customer_params)
   respond_modal_with @customer, location: customers_path
  end

  def show
   @customer = Customer.find(params[:id])
  end

  def index
   @customers = current_user.customers if (current_user)
  end

  def destroy
    Customer.find(params[:id]).destroy
    redirect_to customers_path
  end
  
  private

  def customer_params
    params.require(:customer).permit(:name, :email, :phone_no)
  end
  
end
