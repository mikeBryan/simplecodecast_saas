class ContactMailer < ActionMailer::Base
    default to: 'mikeschertl@googlemail.com'
    
    def contact_email(name, email, body)
        @name= name
        @email = email
        @body = body
        
        #sind die Instanze Variables
        
        mail(from: email, subject: 'Contact Form Message')
    end
end