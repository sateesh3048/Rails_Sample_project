class ClientMailer < ApplicationMailer
  
  def welcome_email(client=Client.first)
    @client = client
    @url  = 'http://example.com/login'
    mail(to: "sat@g.com", subject: "Welcome to mysite")
  end

end
