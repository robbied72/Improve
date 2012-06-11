class AddUserIdToContactNotes < ActiveRecord::Migration
  def change
    add_column :contact_notes, :user_id, :integer
  end
end
