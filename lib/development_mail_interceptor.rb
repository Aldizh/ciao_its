class DevelopmentMailInterceptor
  def self.delivering_email(message)
    message.subject = "#{message.subject}"
    message.to = "its@ciaotelecom.net"
  end
end