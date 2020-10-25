class CreateFKs < ActiveRecord::Migration[6.0]
  def change
	add_reference :tasks, :board, null: false, foreign_key: true
	add_reference :boards, :user, null: false, foreign_key: true
	add_reference :user_board_table, :user, null: false, foreign_key: true
	add_reference :user_board_table, :board, null: false, foreign_key: true
  end
end
