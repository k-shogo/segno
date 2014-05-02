# Segno

An implementation of the b bit MinHash algorithm in ruby

## Installation

Add this line to your application's Gemfile:

    gem 'segno'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install segno

## Usage

### Configuration

```ruby
Segno.configure do |config|
  config.seed= 229393
end
```

### generator

```ruby
gen = Segno.generator
```

### hashing

```ruby
hash1 = gen.hash %w(The quick brown fox jumps over the lazy dog)
hash2 = gen.hash %w(The quick brown fox jumps over the lazy cat)
```

### cacl jaccard

```ruby
hash1.jaccard hash2
```

## Contributing

1. Fork it ( https://github.com/k-shogo/segno/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
