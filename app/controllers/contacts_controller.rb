class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      redirect_to root_path, notice: "Je vous remercie pour votre message, je reviendrais vers vous dans les plus brefs délais"
    else
      flash.now[:error] = "Le message n'a pas pu être envoyé"
      redirect_to root_path, alert: "Le message n'a pas pu être envoyé, veuillez réessayer"
    end
  end
end
