class ServiciosController < ApplicationController

  def index
    if params[:search].blank?
      @servicios = Servicio.page(params[:page].to_i).per(15)
    else
      @servicios = Servicio.search(params[:search]).page(params[:page].to_i).per(15)
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

end
