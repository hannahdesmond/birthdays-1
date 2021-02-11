
require 'birthday.rb'
require 'birthday_list.rb'

describe Birthday do
  it 'has the name of a person' do
    birthday = Birthday.new('Letty', '11-2-1991')
    expect(birthday.person).to eq('Letty')
  end
  it 'has the date of a person' do
    birthday = Birthday.new('Letty', '11-2-1991')
    expect(birthday.date).to eq('11-2-1991')
  end

describe BirthdayList do
  before (:each) do
    @letty_bday = Birthday.new('Letty', '11-2-1991')
    @birthday = @letty_bday.entry
    subject.new_entry(@birthday)
  end
  it 'adds the new entry to the list' do
    expect(subject.birthday_list).to eq([@birthday])
  end
  it 'prints the birthday list' do
    expect { subject.show_list }.to output("Letty, 11-2-1991\n").to_stdout
  end
    it "checks whose birthday it is today" do
      age = @letty_bday.age
      expect { subject.today(age) }.to output("It's Letty's birthday today, they are 30\n").to_stdout
    end
  end
end
