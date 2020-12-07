class User < ApplicationRecord

	has_many :tasks
	has_many :board
	has_many :user_board_table

	has_secure_password

	validates :name, presence: {message: "O campo nome deve ser preenchido"}
	validates :email, presence: {message: "O campo email deve ser preenchido"}
	validates :password, confirmation: true, presence: {message: "As senhas não conferem"},allow_nil: true

	validates :email, format: {with: URI::MailTo::EMAIL_REGEXP, message: "O email informado é inválido"}

end
