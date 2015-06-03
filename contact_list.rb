require_relative 'contact'
require_relative 'contact_database'


def Menu(command)
  db = ContactDatabase.new('contact_data.csv')
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

    db.create(name, email, phone)

  elsif command == "list"
    puts "Here is a list of all contacts:"
    db.list

  elsif command == "show"
    print "What ID would you like to search for? "
    id = gets.chomp.to_i
    db.show(id)


  elsif command == "find"
    puts "Please enter the name, phone number, or email of the contact you're searching."
    keyword = gets.chomp
    db.find(keyword)
  end
  db.save
end

puts "Hello! What would you like to do?"
command = gets.chomp.downcase
Menu(command)