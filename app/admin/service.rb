ActiveAdmin.register Service do
  permit_params :title, :description, :price

  index do
    selectable_column
    id_column
    column :title
    column :price
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :price
    end
    f.actions
  end
end