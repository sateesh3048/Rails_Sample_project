# Preview all emails at http://localhost:3000/rails/mailers/client_mailer
class ClientMailerPreview < ActionMailer::Preview
  def welcome_email
  end
=begin
 def welcome_email(client=Client.first)
    @client = client
    @url  = 'http://example.com/login'
    mail(to: "sat@g.com", subject: "Welcome to mysite")
  end
=end
end
