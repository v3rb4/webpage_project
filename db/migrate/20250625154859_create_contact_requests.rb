class CreateContactRequests < ActiveRecord::Migration[8.0]
  def change
    create_table :contact_requests do |t|
      t.string :name
      t.string :email
      t.text :message
      t.boolean :resolved

      t.timestamps
    end
  end
end
