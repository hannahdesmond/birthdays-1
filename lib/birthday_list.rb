
require_relative './birthday.rb'
require 'date'

class BirthdayList
  attr_reader :birthday_list

  def initialize
    @birthday_list = []
  end

  def new_entry(birthday)
    @birthday_list << birthday
  end

  def show_list
    @birthday_list.each.map {|bday| puts bday.flatten.join(", ")}
  end

  def today(age)
    date = Date.today
    todays_date = date.day.to_s + "-" + date.month.to_s
    @birthday_list.each do |entry|
      entry.each do |person, birthday|
        puts "It's #{person}'s birthday today, they are #{age}" if birthday.slice(0..3) == todays_date
      end
    end
  end
end
