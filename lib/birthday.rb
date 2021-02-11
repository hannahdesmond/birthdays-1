require 'date'

class Birthday
  attr_reader :person, :date
  def initialize(person, date)
    @person = person
    @date = date
  end

  def entry
    birthday = { @person => @date }
  end

  def age
    Date.today.year - @date.slice(-4..-1).to_i
  end

end
