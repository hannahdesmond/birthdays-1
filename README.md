### Birthdays

### Instructions

- Test-drive an implementation of the requirements
- Make sure your code is [linted](https://github.com/rubocop-hq/rubocop)
- [Open a PR](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/about-pull-requests) when you've finished

### Requirements

I want a program that I can load in IRB that allows me to
- Store all of my friends’ birthdays so I can keep track of them
- See them all at once with their names and birthdays each on a line in a tidy format
- Check whose birthday it is today - the program can check through the birthdays I have stored and check each one to see if it’s someone’s birthday, and tells me something like "It's Mary Poppin's birthday today! They are 124 years old!" - otherwise it won't say anything.

More requirements:
- Test-drive extracting a birthday class
- Isolate your birthday list class using a mock for Birthday

### Progress
- I have completed all of the requirements besides the mocking. 


### Coach Feedback

- If you wanted to tidy up your tests a little bit, you could declare  subject(:birthday) { Birthday.new(etc etc) } at the top and then just refer to subject in each test.
- Good unit testing, nice work. They test the behaviour of your app really well.
- Could define these test set-up lines in a let instead of a before each but either works (just a small thing with no major difference either way: let will redefine these things for each test automatically)
- Varied testing, eg. Checking that array with a birthday exists in the context of an array of birthdays is good
- In your Birthday class, it's my understanding that the person and date (of their birthday) would be passed in at initialisation. So I'm not sure if the 'entry' method is needed here - unless I am missing the purpose of it (let me know!)
- I think this adheres well to Single Responsibility Principle: The Birthday represents each individual birthday, and the Birthday List class represents the collator / printer.
- One small piece of feedback on the name of BirthdayList is that I think it could be a little bit more descriptive: it not only contains an array of birthdays but it's also responsible for adding birthdays, showing the list and calculating the age. So maybe something that describes a birthday greeter?
- **On debugging process:** It looks like you had some success following the steps, and I think with practice you'll find that the steps flow almost automatically. I think you could spend more time on the rubber duck step, and that would naturally lead you to the assumptions you're making and want to test
