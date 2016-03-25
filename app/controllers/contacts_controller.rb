class ContactsController < ApplicationController
    def new
        @contact = Contact.new      #Hier wird ein blankes Objekt erstellt, weches in der Variable @contact gespeichert wird. Diese Var können wir dann im View Ordner in unserem Html Doc benutzen. zb. bei dem new.html.erb !!!!!!!!!!!
    end
    
    
    def create
    end
end