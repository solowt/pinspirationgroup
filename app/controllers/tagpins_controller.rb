class TagpinsController < ApplicationController

  def index

  end
  def show

  end
  def new

  end
  def create
    bool = "true"
    @board = Board.find(params[:board_id])
    @pin = Pin.find(params[:pin_id])
    if !Tag.find_by(descrip: params[:descrip])
      new_tag = Tag.create!(descrip: params[:descrip])
      @pin.tagpins.create!(tag: new_tag)
    else
      @pin.tagpins.each do |tagpin|
        if tagpin.tag.descrip == params[:descrip]
          bool = "false"
        end
      end
      if bool == "true"
        @pin.tagpins.create!(tag: Tag.find_by(descrip: params[:descrip]))
      end
    end
    redirect_to board_path(@board)
  end
  def destroy

  end
  def edit

  end
  def update

  end
end
