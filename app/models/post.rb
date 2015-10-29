class Post < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :title, :message => "can't be empty"
  validates_presence_of :description, :message => "can't be empty"
  validates_presence_of :address, :message => "can't be empty"

end
