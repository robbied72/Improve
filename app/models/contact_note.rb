class ContactNote < ActiveRecord::Base
  attr_accessible :contact_id, :note, :user_id

  belongs_to :contact

end
