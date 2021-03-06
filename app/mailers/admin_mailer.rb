class AdminMailer < ActionMailer::Base
  default from: "contact@facespace.com"
  default to: "me@facespace.com"


  def contact_form(contact)
    @params = contact
    mail(subject: "New Contact form Submission")
  end


  def newsletter(params)
    @params = params
    mail(subject: "Newsletter")
  end

end
