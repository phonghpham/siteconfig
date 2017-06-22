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

  permit_params :name, :config, :message

  form do |f|
    f.inputs do 
      f.input :name
      f.input :config, as: :text, input_html: { class: 'jsoneditor-target'}
    end
    f.actions
  end

  index do
    column :id
    column :name
    actions
  end

  show do
    attributes_table do
      row :name
      [:water, :gas, :electric].each do |u|
        row u do |e|
          # @row = u
          e.send("has_#{u}?")
        end
      end


    end
  end

end
