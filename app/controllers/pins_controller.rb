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
    @pin = @board.pins.create!(title: params[:pin][:title], url: params[:pin][:url])
    redirect_to board_path(@board)
  end
  def destroy

  end
  def edit
  end
  def update
  end
end
