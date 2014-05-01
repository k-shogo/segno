require 'b-bit-minhash/seed'
require 'b-bit-minhash/minhash'
module BBitMinHash
  class Generator
    include Seed
    include MinHash

    attr_accessor *Configuration::VALID_OPTIONS_KEYS

    def initialize(options = {})
      options = BBitMinHash.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
      self.seed_vec ||= gen_seed self.k
    end

  end
end
