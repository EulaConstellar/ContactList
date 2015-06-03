require_relative 'contact'
require_relative 'contact_database'

ContactDatabase.load

def Menu(command)
  if command == "help"
    puts "Here is a list of available commands:"
    puts "new  - Create a new contact"
    puts "list - List all contacts"
    puts "show - Show a contact"
    puts "find - Find a contact"

  elsif command == "new"
    puts "Contact's First & Last Name?"
    name = gets.chomp

    puts "Contact's Email?"
    email = gets.chomp

    puts "Contact's Phone Number (w/ no spaces or symbols)?"
    phone = gets.chomp

    Contact.create(name, email, phone)

  elsif command == "list"
    puts "Here is a list of all contacts:"
    ContactDatabase.list

  elsif command == "show"
    puts "Will show only "

  elsif command == "find"
    puts "Please enter the name, phone number, or email of the contact you're searching."
    keyword = gets.chomp
    Class.find(keyword)
      
  end
end

puts "Hello! What would you like to do?"
command = gets.chomp.downcase
Menu(command)
ContactDatabase.save