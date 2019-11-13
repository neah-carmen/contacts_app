class AddMiddleNameToContactList < ActiveRecord::Migration[6.0]
  def change
    add_column :contact_lists, :middle_name, :string
  end
end
