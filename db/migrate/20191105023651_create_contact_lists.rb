class CreateContactLists < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_lists do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
