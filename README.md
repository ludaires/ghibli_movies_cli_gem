# GhibliMoviesCliGem

Welcome to your Ghibli Movies! This is a Command Line Interface (CLI) based gem that gathers information from all movies from Studio Ghibli API.  


In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/ghibli_movies_cli_gem`. To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

To install from git use these instructions:

1 - Clone repo
2 - 'cd'into repo
3 - 'bundle install'
4 - run 'ruby bin/ghibli_movies

```ruby
#gem 'ghibli_movies_cli_gem'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ghibli_movies_cli_gem

## Usage

- The user is presentend with a menu with 3 option to interact with

Typing 1: 
    1 - To see the top 10 movies from Studio Ghibli scored by Rotten Tomatos.
    After list the movies, user will choose to see more information about the movies or go back to the main menu.
Typing 2: 
    2 - To see the list of all movies from Studio Ghibli. 
    Seeing the list of all movies, user can choose to see more information about some especif movie or go back to the main menu.
Typing 3
    3 - Exit from the program.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ludaires/ghibli_movies_cli_gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GhibliMoviesCliGem project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/ludaires/ghibli_movies_cli_gem/blob/master/CODE_OF_CONDUCT.md).
