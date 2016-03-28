class Contact < ActiveRecord::Base
        
        #Nachricht kann jetzt nur noch gesendet werden, wenn was eingetragen wurde.
        
       validates :name, presence:true
       validates :email, presence:true
       
        
       
        
         
        
end