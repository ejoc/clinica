ActiveAdmin.register Ficha do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	permit_params :paciente_id, :altura, :peso, :tipo_sangre_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	index do
    column :paciente
    column :altura
    column :peso
    column :tipo_sangre

    actions
  end


end
