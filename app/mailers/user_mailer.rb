class UserMailer < ApplicationMailer
end

def welcome(user)
  @appname = "Refurbished Bikes"
  mail(to: user.email,
       subject: "Welcome to #{@appname}!")
end
