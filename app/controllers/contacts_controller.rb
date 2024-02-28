class ContactsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if verify_recaptcha(model: @contact)
       ContactMailer.contact_email(@contact).deliver_now
        @contact.request = request
        if @contact.deliver
           flash.now[:success] = 'Mensaje enviado'
         else
           flash.now[:error] = 'Imposible enviar mensaje'
           render :new
         end
    else
      render 'new'
    end
  end
end
