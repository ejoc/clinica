ActiveAdmin.register Paciente do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	permit_params :cedula, :nombres, :apellidos, :fecha_nacimiento, :email, :direccion, :telefono
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	

	# form do |f|
	#   f.inputs # Include the default inputs
	 	
	#  	f.inputs :altura, :peso, :tipo_sangre, 
	# 	  name: "Ficha medica",
	# 	  for: [:ficha, f.object.ficha || Ficha.new]
	#   f.actions # Include the default actions
	# end


	index do
    column :cedula
    column :nombres
    column :apellidos
    column :email
    column :direccion
    column :telefono

    actions
  end

end
