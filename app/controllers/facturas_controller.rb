class FacturasController < ApplicationController
	before_action :authenticate_user!
	def index
		@factura = Factura.new
	end
end