class ContactMail < ActionMailer::Base
  default :from => "guilherme.barbosa90@gmail.com"
  
  def contact_send(contact)
    @contact = contact
    attachments["logo.gif"] = File.read("#{Rails.root}/public/images/logo.gif")
    mail(:to => "guilherme.barbosa90@gmail.com, wollase.andrade@gmail.com", :subject => "Contato - #{contact.subject}")
  end
end