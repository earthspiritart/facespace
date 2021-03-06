class UserMailer < ActionMailer::Base
  layout "mailer"
  default from: "no_reply@facespace.com"

  
  def welcome(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to Facespace")
  end

  def newsletter(params)
    @params = params
    mail(to: @params[:email], subject: "Newsletter")
  end
end
