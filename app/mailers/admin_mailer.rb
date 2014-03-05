class AdminMailer < ActionMailer::Base
  default from: "contact@facespace.com"
  default to: "me@facespace.com"


  def contact_form(params)
    @params = params
    mail(subject: "New Contact form Submission")
  end


end
