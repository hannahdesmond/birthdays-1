
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

  def today
    date = Date.today
    date.day.to_s + "-" + date.month.to_s
  end

end
