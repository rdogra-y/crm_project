class CustomersController < ApplicationController
  def index
    # Fetch all customers
    @all_customers = Customer.all

    # Fetch customers with missing emails
    @missing_email_customers = Customer.where(email: [nil, ""])

    # Fetch all customers sorted alphabetically
    @alphabetized_customers = Customer.order(:full_name)
  end
end
