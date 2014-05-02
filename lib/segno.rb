require 'segno/version'
require 'segno/configuration'
require 'segno/generator'
require 'segno/hash'
require 'murmurhash3'

module Segno
  extend Configuration

  def self.generator(options = {})
    Segno::Generator.new(options)
  end

  def self.method_missing(method_name, *args, &block)
    return super unless generator.respond_to?(method_name)
    generator.send(method_name, *args, &block)
  end

  def self.respond_to?(method_name, include_private = false)
    return generator.respond_to?(method_name, include_private) || super
  end
end
