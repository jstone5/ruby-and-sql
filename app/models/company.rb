class Company < ApplicationRecord
    has_many :contacts
    
    # def contacts
    #     # puts "hello"
    #     Contact.where({ company_id: id })
    # end


end
