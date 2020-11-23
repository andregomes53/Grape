class UsersController < ApplicationController
before_action :block_access

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
    
		if strong_password? and passwords_match? and @user.save

		else
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
	end

	private
	def user_params
		params.require(:user).permit(:name,:email,:password,:password_confirmation)
	end

	private
	def strong_password?
		password = user_params[:password]
		points = 0

		if password.length < 10
			@passw_error = "Senha muito curta (mínimo 10 caracteres)"
			return false
		end
		if password.length > 16 # Point for large password
			points += 1
		end
		if password.length > 50
			@passw_error = "Senha muito longa (máximo 50 caracteres)"
			return false
		end

		used_int = false
		used_char = false
		used_capital = false
		used_other = false

		password.each_char do |char|
			if char =~ /[[:upper:]]/ and !used_capital
				points += 1
				used_capital = true
			elsif char =~ /[[:lower:]]/ and !used_char
				points += 1
				used_char = true
			elsif char =~ /[[:digit:]]/ and !used_int
				points += 1
				used_int = true
			elsif !used_other
				points += 1
				used_other = true
			end
		end

		if points < 3
			@passw_error = "A senha informada é muito fraca"
			return false
		end

		return true
	end

	private
	def passwords_match?
		if user_params[:password] != user_params[:password_confirmation]
			@passw_eq = "As senhas não conferem"
			return false
		else
			return true
		end
	end

end
