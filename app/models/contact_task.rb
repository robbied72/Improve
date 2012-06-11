class ContactTask < ActiveRecord::Base
  attr_accessible :complete, :contact_id, :due, :status, :task_details, :title, :user_id

  STATUS_TYPES = ["Started", "In Progress", "On Hold"]

end
