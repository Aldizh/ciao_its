class TicketStatus < ActiveRecord::Base
  has_many :tickets
  validates_presence_of :name
end
