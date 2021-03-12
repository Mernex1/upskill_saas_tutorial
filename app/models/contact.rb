#database called Contact
class Contact < ActiveRecord::Base
    #checks if all text boxes is filled
    validates :name, presence:true
    validates :email, presence:true
    validates :comments, presence:true
end