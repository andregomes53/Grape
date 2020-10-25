class User < ApplicationRecord
	has_many :tasks
	has_many :board
	has_many :user_board_table
	
	validates :name, presence: {message: "O campo nome deve ser preenchido"}
	validates :email, presence: {message: "O campo email deve ser preenchido"}
	validates :password, presence: {message: "Uma senha deve ser informada"}
    validates_confirmation_of :password, :message => "As senhas não conferem"
	# TODO: validate :passwordStrength
	# TODO: validate :emailValid
	
	private
	def passwordStrength
		#errors.add(:password, "A senha informada é muito fraca")
	end
		
	private
	def emailValid
		#errors.add(:email, "O email informado é inválido")
	end
end