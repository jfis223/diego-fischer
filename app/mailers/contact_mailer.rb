class ContactMailer < ApplicationMailer
    def contact_email(contact)
        @contact = contact
        mail(to: ENV['GMAIL_USERNAME'] , subject: 'Nuevo contacto desde el sitio web')
      end
end
