class AfiladorsController < ApplicationController
  def new
    @afilador = Afilador.new
    authorize @afilador
  end
end
