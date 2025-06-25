ActiveAdmin.register ContactRequest do
  permit_params :name, :email, :message, :resolved

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :resolved
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :message
      f.input :resolved
    end
    f.actions
  end
end