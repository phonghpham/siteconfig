ActiveAdmin.register Entity do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
<<<<<<< Updated upstream

end
=======
  permit_params :config

  index do
    column :id
    column :name
    column :config
    actions
  end
end
>>>>>>> Stashed changes
