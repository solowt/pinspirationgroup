class PinsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @board = Board.find(params[:board_id])
  end
  def show
    @board = Board.find(params[:board_id])
    @pin = Pin.find(params[:id])
  end
  def new
    @board = Board.find(params[:board_id])
    @pin = Pin.new
  end
  def create
    @board = Board.find(params[:board_id])
    @pin = @board.pins.create!(pin_params)
    redirect_to board_path(@board)
  end
  def destroy
    @board = Board.find(params[:board_id])
    @pin = Pin.find(params[:id])
    @pin.destroy
    redirect_to board_path(@board)
  end
  def edit
    @board = Board.find(params[:board_id])
    @pin = Pin.find(params[:id])
  end
  def update
    @board = Board.find(params[:board_id])
    @pin = Pin.find(params[:id])
    @pin.update(pin_params)
    redirect_to board_path(@board)
  end
  private
  def pin_params
    params.require(:pin).permit(:title, :url)
  end
end
