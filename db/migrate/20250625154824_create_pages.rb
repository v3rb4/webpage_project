# frozen_string_literal: true

class CreatePages < ActiveRecord::Migration[8.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :slug
      t.text :content
      t.boolean :published

      t.timestamps
    end
  end
end
