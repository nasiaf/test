class WineController < ApplicationController
  def index
    @vins = Wine.all

  end

  def create
      Wine.create name: params[:name]
      redirect_to "/wine"
  end

  def show
      @wine = Wine.find(params[:id])
  end


  def update
      Wine.find(params[:id]).update params.permit(:name, :vintage, :goal, :nbr_bottle, :color)
      redirect_to "/wines/#{params[:id]}"
  end

  def destroy
      Wine.find(params[:id]).destroy
      redirect_to "/wine"
  end





end
