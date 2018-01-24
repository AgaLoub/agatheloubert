# class ContactsController < ApplicationController
#   skip_before_action :authenticate_user!, only: [ :new, :create ]

#   def new
#     @contact = Contact.new
#   end

#   def create
#     @contact = Contact.new(params[:contact])
#     @contact.request = request
#     if @contact.deliver
#       flash.now[:notice] = 'Merci pour votre message, je reviendrais vers vous très rapidement !'
#     else
#       flash.now[:error] = "Le message n'a pas pu être envoyé"
#       render :new
#     end
#   end
# end


