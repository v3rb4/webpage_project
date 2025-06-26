# frozen_string_literal: true

ActiveAdmin.register Post do
  permit_params :title, :body, :published

  index do
    selectable_column
    id_column
    column :title
    column :published
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :body
      f.input :published
    end
    f.actions
  end
end
