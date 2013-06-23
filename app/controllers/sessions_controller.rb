class SessionsController < ApplicationController
  def new
  	render 'new'
  end

  def create
  	user = User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:password])
		  	 user.id => session[:id]
			redirect_to categories, notice: "LoggedIn!"

		  	 
        else
    	  Flash.now.alert = "Login failed"
    	  render 'new'

   end
  end
end
