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
  end
  def new
    @board = Board.new
  end
  def create
    puts "*"*20
    puts params.inspect
    @board = current_user.boards.create!(title: params[:board][:title])
    redirect_to boards_path
  end
  def destroy
    @board = Board.find(params[:id])
    @board.destroy
  end
  def edit
  end
  def update
  end
end
