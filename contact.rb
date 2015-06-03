class Contact

  attr_accessor :name, :email, :phone

  def initialize(name, email, phone)
    # TODO: assign local variables to instance variables
  
    @name = name
    @email = email
    @phone = phone
  end

  def to_s
    # TODO: return string representation of Contact
    "<Contact> #{@name} (#{@phone}; #{@email})"
  end

  def to_row
    [@name, @email, @phone]
  end

  ## Class Methods
  class << self
    def from_row(row)
      Contact.new(row[0], row[1], row[2])
    end
  end
end