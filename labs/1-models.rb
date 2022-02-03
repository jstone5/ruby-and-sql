# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
apple = Company.where({ name: "Apple" })[0]
amazon = Company.where({ name: "Amazon" })[0]
tesla = Company.where({ name: "Tesla" })[0]

# 2. create 1-2 new contacts for each company (they can be made up)
jassy = Contact.new
jassy.first_name = "Andy"
jassy.last_name = "Jassy"
jassy.email = "andy@amazon.com"
jassy.phone_number = "1231231234"
jassy.company_id = amazon.id
jassy.save

musk = Contact.new
musk.first_name = "Elon"
musk.last_name = "Musk"
musk.email = "elon@tesla.com"
musk.phone_number = "4564564567"
musk.company_id = Company.where({ name: "Tesla" })[0].id # trying out the code without a variable here
musk.save

cook = Contact.new
cook.first_name = "Tim"
cook.last_name = "Cook"
cook.email = "tim@apple.com"
cook.phone_number = "7897897890"
cook.company_id = apple.id
cook.save

puts "There are #{Contact.all.count} contacts in the database."
# puts Contact.all.inspect

contacts = Contact.all

for contact in contacts
    puts "#{contact.first_name} #{contact.last_name} -- #{contact.email}"
end

# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com
