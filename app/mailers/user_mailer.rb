class UserMailer < ApplicationMailer

  def welcome(user)
    @appname ="Refurbishes Bikes"
    mail(to: user. email, 
       subject:"Welcome to #{@appname}!")
  end
  def contact_form(email, name, message)
 @message = message
   mail(from: email,
        to: 'your-email@example.com',
        subject: "A new contact form message from #{name}")
 end

end
