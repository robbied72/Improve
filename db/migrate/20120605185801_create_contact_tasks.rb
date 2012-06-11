class CreateContactTasks < ActiveRecord::Migration
  def change
    create_table :contact_tasks do |t|
      t.string :title
      t.text :task_details
      t.datetime :due
      t.boolean :complete
      t.string :status
      t.integer :contact_id
      t.integer :user_id

      t.timestamps
    end
  end
end
