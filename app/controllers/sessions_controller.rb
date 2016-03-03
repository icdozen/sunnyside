class SessionsController < ApplicationController
  def new
  end

  def create
    @contractor = Contractor.
                  find_by(email: params[:email])
                  try(:authenticate, params[:password])

    if @contractor
      session[:contractor_id] = @contractor.id
      redirect_to contractors_path
      #fix this redirect_to
    else
      render action: 'new'
  end
end

end
