class SessionsController < ApplicationController
	before_action :block_access, except: [:destroy]

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      sign_in
      redirect_to '/boards'
    else
      @error_login = true
      render action: :new
    end
  end

  def destroy
    sign_out
    redirect_to '/sign_in'
  end

end
