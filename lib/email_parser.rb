# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :name, :email_address

    def initialize(email_address)
        @email_address = email_address
    end
    def parse
        # split will separate string by " "
        # collect will put these items into an array
        email_address.split.collect do |email| 
            #if separated by a comma you want to split the comma
            email.split(",")
        end
        .flatten.uniq
    end
end