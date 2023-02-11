# English

Include the English library file in a Ruby script, and you can
reference the global variables such as <code>$_</code> using less
cryptic names, listed below.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'English'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install English

## Usage

Without 'English':

```ruby
$\ = ' -- '
"waterbuffalo" =~ /buff/
print $', $$, "\n"
```

With English:

```ruby
require "English"

$OUTPUT_FIELD_SEPARATOR = ' -- '
"waterbuffalo" =~ /buff/
print $POSTMATCH, $PID, "\n"
```

The available variables are:

| Alias Name                     | Original Name
|--------------------------------|--------------
| $ERROR_INFO                    | $!             
| $ERROR_POSITION                | $@             
| $FS, $FIELD_SEPARATOR          | $;             
| $OFS, $OUTPUT_FIELD_SEPARATOR  | $,             
| $RS, $INPUT_RECORD_SEPARATOR   | $/             
| $ORS, $OUTPUT_RECORD_SEPARATOR | $\             
| $NR, $INPUT_LINE_NUMBER        | $.             
| $LAST_READ_LINE                | $_             
| $DEFAULT_OUTPUT                | $>             
| $DEFAULT_INPUT                 | $<             
| $PID, $PROCESS_ID              | $$             
| $CHILD_STATUS                  | $?             
| $LAST_MATCH_INFO               | $~             
| $IGNORECASE                    | $=             
| $ARGV                          | $*             
| $MATCH                         | $&             
| $PREMATCH                      | $`             
| $POSTMATCH                     | $'             
| $LAST_PAREN_MATCH              | $+             

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ruby/English.
