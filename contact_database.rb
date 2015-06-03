## TODO: Implement CSV reading/writing
require 'csv'

class ContactDatabase
  

  def initialize(filename)
    @contacts = []
    @file = filename

    CSV.foreach(@file) do |row|
      @contacts << Contact.from_row(row)
    end
  end

  def save
    CSV.open(@file, 'w') do |csv|
      @contacts.each do |contact|
        csv << contact.to_row
      end
    end
  end

  def load
    
  end

  def list
    puts @contacts
  end

  def create(name,email,phone)
    @contacts << Contact.new(name, email, phone)
  end

  def add(contact)
    @contacts << contact
  end

  def show

  end

  def find

  end
end