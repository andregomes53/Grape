class SessionsController < ApplicationController
before_action :block_access, except: [:destroy]

  def create
    @user = User.find_by(email: params[:session][:email])
    #if @user != nil
    #  @has_user = false
    #  return
    #else
    #  @has_user = true
    #end
    if @user and @user.password == params[:session][:password]
      sign_in
      redirect_to @user
    else
      render action: :new
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

end
