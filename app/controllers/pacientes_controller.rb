class PacientesController < ApplicationController

  def index
    if params[:search].blank?
      @pacientes = Paciente.page(params[:page].to_i).per(15)
    else
      @pacientes = Paciente.search(params[:search]).page(params[:page].to_i).per(15)
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

end
