class AddBioToContactList < ActiveRecord::Migration[6.0]
  def change
    add_column :contact_lists, :bio, :text
  end
end
