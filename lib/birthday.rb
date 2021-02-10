class Birthday
  attr_reader :person, :date
  def initialize(person, date)
    @person = person
    @date = date
  end

  def entry
    @person + ", " + @date
  end

end
