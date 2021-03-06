# NOTES

https://softchris.github.io/pages/dotnet-10-commands.html

# K Builder Dotnet

> K Builder Dotnet provides various fluent builders for building dotnet assets, specifically for c#

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'k_builder-dotnet'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install k_builder-dotnet
```

## Stories

### Main Story

As a C# Developer, I want to generate dotnet code, projects and solutions quickly, so I build repeating patterns quickly

See all [stories](./STORIES.md)

## Usage

See all [usage examples](./USAGE.md)

### Basic Example

#### Create solution

Create a new solution that contains many projects to solve a business problem.

```ruby
solution = builder.new_solution(:pitstop)
```

#### Create project(s)

Create two projects attached to the solution

![Build Two Projects](docs/builder-two-projects.png)

## Development

Checkout the repo

```bash
git clone klueless-io/k_builder-dotnet
```

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests.

You can also run `bin/console` for an interactive prompt that will allow you to experiment.

```bash
bin/console

Aaa::Bbb::Program.execute()
# => ""
```

`k_builder-dotnet` is setup with Guard, run `guard`, this will watch development file changes and run tests automatically, if successful, it will then run rubocop for style quality.

To release a new version, update the version number in `version.rb`, build the gem and push the `.gem` file to [rubygems.org](https://rubygems.org).

```bash
gem build
gem push rspec-usecases-?.?.??.gem
# or push the latest gem
ls *.gem | sort -r | head -1 | xargs gem push
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/klueless-io/k_builder-dotnet. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the K Builder Dotnet project???s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/klueless-io/k_builder-dotnet/blob/master/CODE_OF_CONDUCT.md).

## Copyright

Copyright (c) David Cruwys. See [MIT License](LICENSE.txt) for further details.
