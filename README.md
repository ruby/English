# English

Include the English library file in a Ruby script, and you can
reference the global variables such as <code>$_</code> using less
cryptic names, listed below.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'english'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install english

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

The aliases are defined in [English.rb](lib/English.rb), and are as follows, first alias to builtin, then builtin to alias:

### Builtin to Alias Table

| Builtin | Alias                    |
| :-----: | ------------------------ |
|   $!    | $ERROR_INFO              |
|   $$    | $PID                     |
|   $$    | $PROCESS_ID              |
|   $&    | $MATCH                   |
|   $'    | $POSTMATCH               |
|   $*    | $ARGV                    |
|   $+    | $LAST_PAREN_MATCH        |
|   $,    | $OFS                     |
|   $,    | $OUTPUT_FIELD_SEPARATOR  |
|   $.    | $INPUT_LINE_NUMBER       |
|   $.    | $NR                      |
|   $/    | $INPUT_RECORD_SEPARATOR  |
|   $/    | $RS                      |
|   $;    | $FIELD_SEPARATOR         |
|   $;    | $FS                      |
|   $<    | $DEFAULT_INPUT           |
|   $>    | $DEFAULT_OUTPUT          |
|   $?    | $CHILD_STATUS            |
|   $@    | $ERROR_POSITION          |
|   $\    | $ORS                     |
|   $\    | $OUTPUT_RECORD_SEPARATOR |
|   $_    | $LAST_READ_LINE          |
|   $`    | $PREMATCH                |
|   $~    | $LAST_MATCH_INFO         |


### Alias to Builtin Table

| Alias                    | Builtin |
| ------------------------ | :-----: |
| $ARGV                    |   $*    |
| $CHILD_STATUS            |   $?    |
| $DEFAULT_INPUT           |   $<    |
| $DEFAULT_OUTPUT          |   $>    |
| $ERROR_INFO              |   $!    |
| $ERROR_POSITION          |   $@    |
| $FIELD_SEPARATOR         |   $;    |
| $FS                      |   $;    |
| $INPUT_LINE_NUMBER       |   $.    |
| $INPUT_RECORD_SEPARATOR  |   $/    |
| $LAST_MATCH_INFO         |   $~    |
| $LAST_PAREN_MATCH        |   $+    |
| $LAST_READ_LINE          |   $_    |
| $MATCH                   |   $&    |
| $NR                      |   $.    |
| $OFS                     |   $,    |
| $ORS                     |   $\    |
| $OUTPUT_FIELD_SEPARATOR  |   $,    |
| $OUTPUT_RECORD_SEPARATOR |   $\    |
| $PID                     |   $$    |
| $POSTMATCH               |   $'    |
| $PREMATCH                |   $`    |
| $PROCESS_ID              |   $$    |
| $RS                      |   $/    |


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ruby/English.
