require 'development_mail_interceptor'
ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => "ciaotelecom.net",
    :user_name => "its.ciaotelecom@gmail.com",
    :password => "Ci402013",
    :authentication => "plain",
    :enable_starttls_auto => true
}
ActionMailer::Base.default_url_options[:host] = 'its.ciaotelecom.net'
Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?