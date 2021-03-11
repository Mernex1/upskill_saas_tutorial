class ContactsController < ApplicationController
   def new
      #creates a new Contact object points to contact.rb
      #{:name, :email, :comments}
      @contact = Contact.new
   end
   #def create rails knows to use create action to save onto database
   def create
      #saving filled infomation onto database
      #{name: John, email: JohnDoe@email.com, comments: I'm lost}
      @contact = Contact.new(contact_params)
      #if you object.save it will save onto database
      if @contact.save
         redirect_to new_contact_path, notice: "Message sent."
      else 
         redirect_to new_contact_path, notice: "Error occured."
      end
   end
   #creating a private def with the params that were filled out in new.html.erb
   private
      def contact_params
         params.require(:contact).permit(:name, :email, :comments)
      end
end