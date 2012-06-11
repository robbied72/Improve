class Contact < ActiveRecord::Base
  attr_accessible :add1, :add2, :company, :county, :email, :fname, :lname, :mob, :postcode, :tel, :town, :user_id

  has_many :contact_notes

  validates_presence_of :fname
  validates_presence_of :lname


end
