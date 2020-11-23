module SessionsHelper
  #Sign in helpers
  def sign_in #Sign in function
    session[:user_id] = @user.id
  end

  def current_user  # Getting the current user in session
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def block_access # Blocking the access, a user shouldn't be able to login multiple times.
    if current_user.present?
      redirect_to users_path
    end
  end

  def logged_in? # Returns if a users is logged
    !current_user.nil?
  end

  # Sign out helpers
  def sign_out # Sign out function
    session.delete(:user_id)
    @current_user = nil
  end

end
