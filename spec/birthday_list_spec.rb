
require 'birthday.rb'
require 'birthday_list.rb'

describe Birthday do
  it 'has the name of a person' do
    birthday = Birthday.new('Hannah', '14-Feb')
    expect(birthday.person).to eq('Hannah')
  end
  it 'has the date of a person' do
    birthday = Birthday.new('Hannah', '14-Feb')
    expect(birthday.date).to eq('14-Feb')
  end
  describe '#age' do
    it "returns the person's age" do
      birthday = Birthday.new('Hannah', '11-02-1986')
      expect(birthday.age).to eq(35)
    end
  end

describe BirthdayList do
  it 'has somewhere to store birthdays' do
    expect(subject.birthday_list).to eq([])
  end
  it 'adds the new entry to the list' do
    birthday = Birthday.new('Hannah', '14-Feb').entry
    subject.new_entry(birthday)
    expect(subject.birthday_list).to eq([birthday])
  end
  it 'prints the birthday list' do
    birthday = Birthday.new('Hannah', '14-Feb').entry
    subject.new_entry(birthday)
    expect { subject.show_list }.to output("Hannah, 14-Feb\n").to_stdout
  end
  describe '#today' do
    it "checks whose birthday it is today" do
      letty_bday = Birthday.new('Letty', '11-2-1991')
      birthday = letty_bday.entry
      subject.new_entry(birthday)
      age = letty_bday.age
      expect { subject.today(age) }.to output("It's Letty's birthday today, they are 30\n").to_stdout
    end
  end
end
end
