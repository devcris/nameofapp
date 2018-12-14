class UserRegistrationsController < Devise::RegistrationsController
  def create
    super
    if @user.persisted?
      UserMailer.welcome(@user).deliver_now
    end
  end
  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end

end
