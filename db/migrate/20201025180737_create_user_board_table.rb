class CreateUserBoardTable < ActiveRecord::Migration[6.0]
  def change
    create_table :user_board_tables do |t|
		t.timestamps
    end
  end
end
