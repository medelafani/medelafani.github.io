require "pry"

class User
  attr_accessor :email
  attr_accessor :age
  @@all_users = []

  def initialize(email_to_save, age_to_save)
    @email = email_to_save
    @@all_users << self
    @age = age_to_save
  end

  def read_email
    return @email
  end

  def read_age
    return @age
  end

  def self.all
    return @@all_users
  end

end

binding.pry
puts "End of file"