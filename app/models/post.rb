class Post < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :title, :message => "title can't be empty"
  validates_presence_of :description, :message => "description can't be empty"
  validates_presence_of :address, :message => "address can't be empty"

end
