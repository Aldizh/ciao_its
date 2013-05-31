class TicketMailer < ActionMailer::Base
  default :from => "tenzin@ciaotelecom.net"
  def new_ticket_notification(ticket)
    @ticket = ticket
    mail(:to => "its.ciaotelecom@gmail.com", :subject => "New Ticket - #{ticket.title.upcase}")
  end
end