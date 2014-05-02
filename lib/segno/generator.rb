require 'segno/seed'
require 'segno/minhash'
module Segno
  class Generator
    include Seed
    include MinHash

    attr_accessor *Configuration::VALID_OPTIONS_KEYS

    def initialize(options = {})
      options = Segno.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
      self.seed_vec ||= gen_seed self.k
    end

  end
end
