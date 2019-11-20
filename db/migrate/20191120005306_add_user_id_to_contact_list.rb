class AddUserIdToContactList < ActiveRecord::Migration[6.0]
  def change
    add_column :contact_lists, :user_id, :integer
  end
end
