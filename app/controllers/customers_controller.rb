class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def missing_email
    @customers = Customer.where(email: [nil, ""])
    render :index
  end

  def alphabetized
    @customers = Customer.order(:full_name)
    render :index
  end
end
