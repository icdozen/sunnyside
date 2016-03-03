class SessionsController < ApplicationController
  # def index
  # @customers = Customer.all
  # @contractors = Contractor.all
  # end

  def new
  end

  def create
    @contractor = Contractor.
                  find_by(email: params[:email])
                  try(:authenticate, params[:password])

    @customer = Customer.
                  find_by(email: params[:email])
                  try(:authenticate, params[:password])
    if @contractor
      session[:contractor_id] = @contractor.id
      redirect_to contractors_path
      #fix this redirect_to

    elsif @customer
      session[:customer_id] = @customer.id
      redirect_to customers_path

    else
      render action: 'new'
  end
end

end
