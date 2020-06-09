class WineController < ApplicationController

  PAGE_SIZE = 8

  def index

    if params[:color]
      @vins = Wine.where("color = ?", params[:color])

    else
      @vins = Wine.all
    end



  end



  def create

      Wine.create params.require(:name).permit(:vintage, :goal, :nbr_bottle, :color)
      redirect_to "/wine"

  end

  def show
      @wine = Wine.find(params[:id])
  end


  def update
      Wine.find(params[:id]).update params[:wine].permit(:name, :vintage, :goal, :nbr_bottle, :color)
      redirect_to "/wines/#{params[:id]}"
  end

  def destroy
      Wine.find(params[:id]).destroy
      redirect_to "/wine"
  end
end
