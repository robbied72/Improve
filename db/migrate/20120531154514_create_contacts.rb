class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :fname
      t.string :lname
      t.string :company
      t.string :add1
      t.string :add2
      t.string :town
      t.string :county
      t.string :postcode
      t.string :tel
      t.string :mob
      t.string :email
      t.integer :user_id

      t.timestamps
    end
  end
end
