ActiveAdmin.register Page do
  permit_params :title, :slug, :content, :published

  index do
    selectable_column
    id_column
    column :title
    column :slug
    column :published
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :slug
      f.input :content
      f.input :published
    end
    f.actions
  end
end