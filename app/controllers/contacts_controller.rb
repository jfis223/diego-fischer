class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Mensaje enviado'
    else
      flash.now[:error] = 'Imposible enviar mensaje'
      render :new
    end
  end
end
