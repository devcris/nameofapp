class UserMailer < ApplicationMailer

def welcome(user)
  @appname = "Refurbished Bikes"
  mail(to: user.email,
       subject: "Welcome to #{@appname}!")
end
end
