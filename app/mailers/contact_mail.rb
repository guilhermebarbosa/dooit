class ContactMail < ActionMailer::Base
  default :from => "guilherme.barbosa90@gmail.com"
  
  def contact_send(contact)
    @contact = contact
    attachments["logo.gif"] = File.read("#{Rails.root}/public/images/logo.gif")
    mail(:to => "#{contact.name} <#{contact.email}>", :subject => "Contato - #{contact.subject}")
  end
end