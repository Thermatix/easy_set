# EasySet
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'easy_set'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install easy_set

## Usage

To use the this library is easy.

First create your storing class like this:

```ruby
class Config
  include Easy_Set
end
```

and then adding settings like this:

```ruby
class Config
  include Easy_Set
  set :root, File.expand_path('.',File.dirname(__FILE__))
  set :name, 'GemNameCouldGoHere'
  set :port, 30045
  set :url, 'some_url.com/endpoint'
  set :credentials, {
    key: 'some_key',
    secret: 'some_secret'

  }
end
```

and that's it, to access the data you can just do:

```ruby
some_function_requiring_a_url(Config[:url])
```

You can also generate a random string of numbers/text for use in secret keys like this:

```ruby
class Config
  include Easy_Set
  set :key, generate_rand_string(128) #this will generate a string of random numbers & letters 128 characters long
end
```

Lastly you can load in a yaml file for config purposes

```ruby
Config.load_config_from('some_path')
```

and it can be accessed like this:

```ruby
Config[:config]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/easy_set. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
