class ContactsController < ApplicationController
    def new
        @contact = Contact.new      #Hier wird ein blankes Objekt erstellt, weches in der Variable @contact gespeichert wird. Diese Var können wir dann im View Ordner in unserem Html Doc benutzen. zb. bei dem new.html.erb !!!!!!!!!!!
    end
    
    
    def create
        @contact = Contact.new(contact_params)
        
        if @contact.save
            name = params[:contact][:name]
            email = params[:contact][:email]
            body = params[:contact][:comments]
            
            ContactMailer.contact_email(name, email, body).deliver
            
            flash[:success] = "Message sent."       #in dem fall ist das [:SUCCESS] der key, wird dann in der application.html.erb eingefügt.
            redirect_to new_contact_path
        else
            flash[:danger] = "Error occured. Message has not been sent."
            redirect_to new_contact_path
        end
    end
    
    
    private 
        def contact_params
            params.require(:contact).permit(:name, :email, :comments)       #ist ne wichtige Line, müssen die aus Sicherheitsgründen schreiben.
        end
end