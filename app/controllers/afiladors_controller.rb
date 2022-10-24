class AfiladorsController < ApplicationController
  def new
    @afilador = Afilador.new
    authorize @afilador
  end

  def show
    @afilador = Afilador.find(params[:id])
  end
end
