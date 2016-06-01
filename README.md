# ValidateZipcode

Adds ZipCode / PostalCode validation support to Rails (ActiveModel) and test it in a simple way.

Any other country's postal code that not on the [list of country identification](https://github.com/RamonHossein/validate_zipcode/blob/master/LIST.md) will validate without errors.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'validate_zipcode'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install validate_zipcode

## Usage

Just use as any other validator passing the country:

ValidateZipcode expects the model has an attribute called country to contain the country identification.

```ruby
class Address < ActiveRecord::Base
  validates :zipcode, zipcode: {country: "US"}
end
```

## Error Message

If you need to localize the error message, just add this to your I18n locale file:

```ruby
errors:
  messages:
    this_zip_code_is_invalid: "This zip code is invalid"
```

You can provide your own message using :message option.

```ruby
validates :zipcode, zipcode: {country: "US", message: "new error message"}
```

## Mantainers

[RamonHossein](https://github.com/RamonHossein)

## Contributors

To see the generous people who have contributed code, take a look at the [contributors list](http://github.com/RamonHossein/validate_zipcode/contributors).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
