## Test automation google

## First steps

- Install ruby : `brew install ruby` Homebrew (macOS)
- Install cucumber : `gem install cucumber --no-document` Homebrew (macOS)
- Add in config profile file ( .zshrc, .bashrc), `export PATH="$PATH:$HOME/.rvm/bin"` and `source ~/.rvm/scripts/rvm`.
- Download and move to the root of the project the ChromeDriver
- Move to project root and run `bundle install`. - Bundler manages an application's dependencies through its entire life, across many machines, systematically and repeatably

## Generals

- In the folder `features/step_definitions` create files who define steps for each feature.
- In file `env.rb` define environment vars.
- In file `hooks.rb` define actions after/before each feature/scenario/tag.
- In file `helpers.rb` create modules and methods that you think can be used for many steps/features.
- Create files `.feature` in folder `features` and use descriptive names.
- Run rubocop with `bundle exec rubocop features` is a Ruby static code analyzer

## Documentation

- Cucumber: https://docs.cucumber.io/
- Ruby: https://ruby-doc.org/ - http://rubytutorial.wikidot.com/ - https://www.ruby-lang.org/es/documentation/installation/
- ChromeDriver : https://chromedriver.chromium.org/
- Rspec: http://rspec.info/documentation/
- RuboCop https://rubocop.readthedocs.io/en/latest/