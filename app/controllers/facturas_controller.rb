class FacturasController < ApplicationController
	before_action :authenticate_user!

  # before_action :set_factura, only: [:show, :edit, :update, :destroy]

	def index
		@factura = Factura.new
	end

  def add_service
    @factura_detalle = FacturaDetalle.new
  end

  def new
    @factura = Factura.new
  end

  def create
    @factura = Factura.create(factura_params)

    respond_to do |format|
      if @factura.save
        format.html { redirect_to(@factura, :notice => 'Factura was successfully created.') }
        format.js { flash.now[:notice] = 'Chapter was successfully created.'}
      else
        format.json { render json: @factura.errors.full_messages,
                            status: :unprocessable_entity }
      end
    end
  end

  private
    def factura_params
      params.require(:factura).permit(:user_id, :paciente_id, :metodo_pago_id, detalles_attributes: [:id, :servicio_id, :cantidad, :_destroy])
    end
end
