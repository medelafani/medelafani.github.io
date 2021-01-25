require 'time'
require 'pry'

class Event
  attr_accessor :start_date
  attr_accessor :title
  attr_reader :duration
  attr_reader :attendees

  def initialize(start_date_to_save, duration_to_save, title_to_save, attendees_to_save)
    @start_date = Time.parse(start_date_to_save)
    @duration = duration_to_save
    @title = title_to_save
    @attendees = attendees_to_save
  end

  def end_date_to_display
  return @end_date = @start_date + (@duration.to_i * 60)
  end

  def postpone_24h
   @start_date = @start_date + 86400
  end

  def is_past?
    @start_date < Time.now
  end

  def is_future?
    @start_date > Time.now
  end
  
  def is_soon?
    @start_date < (Time.now + 1800)
  end

  def to_s
    puts "Your meeting is named: #{self.title}"
    puts "The meeting will begin at: #{self.start_date.strftime("%Y-%m-%d %H:%M")}"
    puts "End of meeting: #{self.end_date_to_display.strftime("%Y-%m-%d %H:%M")}"
    puts "Your meeting is passed #{self.is_past?}"
    puts "Hey, it's coming up! #{self.is_future?}"
    puts "it will be starting soon #{self.is_soon?}"
  end
end

binding.pry
puts "End of file"