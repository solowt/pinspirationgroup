class TagsController < ApplicationController

  def index

  end
  def show
    @tag = Tag.find(params[:id])
  end
  def new

  end
  def create

  end
  def destroy

  end
  def edit

  end
  def update

  end
  private
  def tag_params
    params.require(:tag).permit(:descrip)
  end
end
