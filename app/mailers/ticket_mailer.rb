class TicketMailer < ActionMailer::Base
  default :from => "its@ciaotelecom.net"
  def new_ticket_notification(ticket)
    @ticket = ticket
    mail(:to => "its@ciaotelecom.net", :subject => "New Ticket - #{ticket.title.upcase}")
  end

  def ownership_notification(ticket)
    @ticket = ticket
    mail(:to => "its@ciaotelecom.net", :subject => "Ticket Owned by - #{ticket.user[:name]}")
  end
end