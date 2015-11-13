class BoardsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :index]

  def home
  end

  def index
    #code
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
    @tagpin = Tagpin.new
  end
  def new
    @board = Board.new
  end
  def create
    @board = current_user.boards.create!(board_params)
    redirect_to board_path(@board)
  end
  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to boards_path
  end
  def edit
    @board = Board.find(params[:id])
  end
  def update
    @board = Board.find(params[:id])
    @board.update(board_params)
    redirect_to board_path(@board)
  end
  private
  def board_params
    params.require(:board).permit(:title)
  end
end
