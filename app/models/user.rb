class User < ApplicationRecord
	has_many :tasks
	has_many :board
	has_many :user_board_table
	
	validates :name, presence: {message: "O campo nome deve ser preenchido"}
	validates :email, presence: {message: "O campo email deve ser preenchido"}
	validates :password, :presence =>true, :confirmation =>true
    validate :passwordEquals?
	validate :passwordStrength
	validate :emailValid
	
	private
	def passwordStrength
  
		points = 0
		
		if password.length < 8 then
			errors.add(:password, "Senha muito curta (mínimo 8 caracteres)")
			return false
		end

		if password.length > 10 and password.length < 16 then # Point for large password
			points = 1
		end

		if password.length > 15
			errors.add(:password, "Senha muito longa (máximo 15 caracteres)")
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
				errors.add(:password, "Apenas número e letras são aceitos")
				return false

			end

		end
		
		
		if points < 3 then
			errors.add(:password, "A senha informada é muito fraca")
			return false
		else 
			return true
		end
	end
	
	private
	def emailValid
		if email == "email_invalido"
			errors.add(:email, "O email informado é inválido")
		end
	end
	
	private
	def passwordEquals?
		puts(password)
		if password_confirmation then
			print(password_confirmation)
		else
			puts("TA VAZIO")
		end
		if !password.eql?(password_confirmation) then
			errors.add(:password, "As senhas não conferem")	
			return false
		else
			return true
		end
	end
end