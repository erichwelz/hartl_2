class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && @user.authenticate(params[:session][:password])
        #sign the user in and redirect to the user's show page
    else
      flash.now[:error] = 'Invalid/password combination'
      render 'new'
    end
  end

  def destroy
  end
end