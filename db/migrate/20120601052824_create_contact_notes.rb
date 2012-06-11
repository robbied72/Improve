class CreateContactNotes < ActiveRecord::Migration
  def change
    create_table :contact_notes do |t|
      t.text :note
      t.integer :contact_id

      t.timestamps
    end
  end
end
