class StaticController < ApplicationController
  
  def index
  end

  def contact
    @contact = Contact.new
    if request.post?
    @contact.assign_attributes(contact_params)
      if @contact.save
      redirect_to contact_path, notice: "we will get back to you soon"
    else
      flash[:alert] = "oops"
      render :contact

      end
    end
  end

  def newsletter
    if request.post?
      UserMailer.newsletter(params).deliver
      AdminMailer.newsletter(params).deliver
    end
  end


  private

  def contact_params
    params.require(:contact).permit(:name, :email, :question)
  end
end
