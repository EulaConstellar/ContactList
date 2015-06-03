## TODO: Implement CSV reading/writing
require 'csv'

class ContactDatabase
  # attr_accessor :save, :list, :show, :find
  
  @@contacts = []

  class << self

    def save
      CSV.open('contact_data.csv', 'w') do |csv|
        @@contacts.each do |contact|
          csv << contact.to_row
        end
      end
    end

    def load
      CSV.foreach('contact_data.csv') do |row|
        @@contacts << Contact.from_row(row)
      end
    end

    def list
      puts @@contacts
    end

    def create(name,email,phone)
      @@contacts << Contact.new(name, email, phone)
    end

    def add(contact)
      @@contacts << contact
    end

    def show
      
    end

    def find

    end

  end
end