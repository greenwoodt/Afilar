class CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
  end


#instance method to create a new customer profile
  def new
    @customer = Customer.new
    authorize @customer
  end

#customer is dependent on the User model under devise to create a customer profile to work.
  def create
    @customer = Customer.new(customer_params)
    @customer.user = current_user
    authorize @customer
    @customer.save
    if @customer.save!
      redirect_to root_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

#edit customer profile
  def edit
    @customer = Customer.find(params[:id])
    authorize @customer
  end

  def update
    @customer = Customer.find(params[:id])
    authorize @customer
    @customer.update(customer_params)
    redirect_to customer_path(@customer)
  end

  def destroy
    @customer = Customer.find(params[:id])
    authorize @customer
    @customer.destroy
    redirect_to root_path, status: :see_other
  end


end
