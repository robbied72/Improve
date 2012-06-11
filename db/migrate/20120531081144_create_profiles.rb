class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :fname
      t.string :lname
      t.string :add1
      t.string :add2
      t.string :town
      t.string :county
      t.string :postcode
      t.string :tel
      t.string :mob

      t.timestamps
    end
  end
end
