class StaticController < ApplicationController
  
  def index
  end

  def contact
    if request.post?
    AdminMailer.contact_form(params).deliver
    redirect_to contact_path, notice: "we will get back to you soon"
    end
  end

end
