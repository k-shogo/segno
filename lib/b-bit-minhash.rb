require 'b-bit-minhash/version'
require 'b-bit-minhash/configuration'
require 'b-bit-minhash/generator'
require 'murmurhash3'

module BBitMinHash
  extend Configuration

  def self.generator(options = {})
    BBitMinHash::Generator.new(options)
  end

  def self.method_missing(method_name, *args, &block)
    return super unless client.respond_to?(method_name)
    client.send(method_name, *args, &block)
  end

  def self.respond_to?(method_name, include_private = false)
    return client.respond_to?(method_name, include_private) || super
  end
end
