class BoardsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def home
  end

  def index
    #code
  end
end
