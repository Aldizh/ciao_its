class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :ticket_status
  validates_presence_of :user, :title, :description, :category_id, :ticket_status_id
    
end
