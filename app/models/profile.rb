class Profile < ActiveRecord::Base
  attr_accessible :add1, :add2, :county, :fname, :lname, :mob, :postcode, :tel, :town, :user_id

  validates :fname, :presence => {:message => 'Name cannot be blank, Task not saved'}

end
