class Birthday
  attr_reader :person, :date
  def initialize(person, date)
    @person = person
    @date = date
  end

  def entry
    birthday = { @person => @date }
    # @person + ", " + @date
  end

end
