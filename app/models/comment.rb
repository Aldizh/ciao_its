class Comment < ActiveRecord::Base
  belongs_to :ticket
  belongs_to :user
  validates_presence_of :title, :description, :ticket_id, :user_id
end
