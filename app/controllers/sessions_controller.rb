class SessionsController < ApplicationController
  def new
  end

  def create
    person = Person.find_by(email: params[:session][:email].downcase)
    if person && person.authenticate(params[:session][:password])
      log_in person
      redirect_to root_path
    else
      flash.now[:danger] = 'Invalid email or password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end