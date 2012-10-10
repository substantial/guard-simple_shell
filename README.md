# Guard::SimpleShell

A guard that runs a command once even when multiple files change.

Example:

```ruby
# outputs 'Guard simple shell' whenever example.txt changes
guard :simple_shell, {
  :name => 'Example',
  :command => 'echo "Guard simple shell"',
  :run_on_start => true
} do
  watch(%r{example.txt})
end
```

## Installation

Add this line to your application's Gemfile:

    gem 'guard-simple-shell'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install guard-simple-shell

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
