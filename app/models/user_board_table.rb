class User_board_table < ApplicationRecord
	belongs_to :user
	belongs_to :board
end