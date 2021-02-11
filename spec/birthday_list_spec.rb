
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
end

describe BirthdayList do
  it 'has somewhere to store birthdays' do
    expect(subject.birthday_list).to eq([])
  end
  it 'responds to #new_entry' do
    expect(subject).to respond_to(:new_entry).with(1).argument
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
  it "creates a string of today's date" do
    date = Date.today
    date_str = date.day.to_s + "-" + date.month.to_s
    expect(subject.today).to eq(date_str)
  end
  # it "checks whether today's date is in birthday list"

end
