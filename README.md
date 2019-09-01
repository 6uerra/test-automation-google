## Natura automation

## First steps

- Install ruby : `sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB curl -sSL https://get.rvm.io | bash -s stable source ~/.rvm/scripts/rvm rvm install 2.5.3 rvm use 2.5.3 --default`
- Add in config profile file ( .zshrc, .bashrc), `export PATH="$PATH:$HOME/.rvm/bin"` and `source ~/.rvm/scripts/rvm`.
- Move to project root and run `bundle install`.

## Generals

- In the folder `features/step_definitions` create files who define steps for each feature.
- In file `env.rb` define environment vars.
- In file `hooks.rb` define actions after/before each feature/scenario/tag.
- In file `helpers.rb` create modules and methods that you think can be used for many steps/features.
- Create files `.feature` in folder `features` and use descriptive names.
- Run rubocop with `bundle exec rubocop features`

## Documentation

- Cucumber: https://docs.cucumber.io/
- Ruby: https://ruby-doc.org/
- Rspec: http://rspec.info/documentation/
