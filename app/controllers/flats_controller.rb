class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def destory
  end
end
