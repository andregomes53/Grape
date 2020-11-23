class UsersController < ApplicationController
before_action :block_access

	def new
		@user = User.new
	end

	def create

		@user = User.new(user_params)

		pass_valid = passwordStrength and passwordEquals?

		if @user.save and pass_valid
				redirect_to '/sign_in'
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
	def passwordStrength

		password = user_params[:password]

		points = 0

		if password.length < 8 then
			@passw_error = "Senha muito curta (mínimo 8 caracteres)"
			return false
		end

		if password.length > 10 and password.length < 16 then # Point for large password
			points = 1
		end

		if password.length > 15
			@passw_error = "Senha muito longa (máximo 15 caracteres)"
			return false
		end

		used_int = false
		used_char = false
		used_capital = false

		def letter?(character)
			character =~ /[[:alpha:]]/
		end

		def numeric?(character)
			character =~ /[[:digit:]]/
		end

		for char in password.split("")

			if letter?(char) then

				if char == char.capitalize and !used_capital then
					points = points + 1 #Point for using a capitalized character
					used_capital = true
					next
				end

				if !used_char then
					points = points + 1 #Point for using an alphabetical character
					used_char = true

				end

			elsif numeric?(char)
				if !used_int then
					points = points + 1 #Point for using a numerical character
					used_int = true
				end

			else
				@passw_error = "Apenas número e letras são aceitos"
				return false

			end

		end


		if points < 3 then
			@passw_error = "A senha informada é muito fraca"
			return false
		else
			return true
		end
	end

	private
	def passwordEquals?
		if !user_params[:password].eql?(user_params[:password_confirmation]) then
			@passw_eq = "As senhas não conferem"
			return false
		else
			return true
		end
	end

end
