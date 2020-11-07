class CreateBoardFk < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :board, null: false, foreign_key: true
  end
end