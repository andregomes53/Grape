class User < ApplicationRecord
	has_many :tasks
	
	validates :name, presence: {message: "O campo nome deve ser preenchido"}
	validates :email, presence: {message: "O campo email deve ser preenchido"}
	validates :password, presence: {message: "Uma senha deve ser informada"}
    validates_confirmation_of :password, :message => "As senhas não conferem"
	validate :passwordStrength
	# TODO: validate :emailValid
	
	private
	def passwordStrength
  
		points = 0
		
		if password.length < 8 then
			return "senha muito curta (mínimo 8 caracteres)"
		end

		if password.length > 10 and password.length < 16 then # Point for large password
			points = 1
		end

		if password.length > 15
			return "senha muito longa (máximo 15 caracteres)"
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
			errors.add(:password, "Senha muito fraca")
			return false
		else 
			return true
		end
	end
	
	private
	def emailValid
		#errors.add(:email, "O email informado é inválido")
	end
end