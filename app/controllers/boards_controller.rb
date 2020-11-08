class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to action: 'show', id: @board.id
    else
      render 'new'
    end
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to action: "index"
  end

  private
  def board_params
    params.require(:board).permit(:name)
  end

end
