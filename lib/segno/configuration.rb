module Segno
  module Configuration
    VALID_OPTIONS_KEYS = [
      :b,
      :k,
      :seed,
      :seed_vec
    ].freeze

    DEFAULT_B = 1
    DEFAULT_K = 128
    DEFAULT_SEED = 2090358822
    DEFAULT_SEED_VEC = nil

    attr_accessor *VALID_OPTIONS_KEYS

    def self.extended(base)
      base.reset
    end

    def configure
      yield self
      self
    end

    def options
      VALID_OPTIONS_KEYS.inject({}) do |options, key|
        options.merge!(key => send(key))
      end
    end

    def reset
      self.b    = DEFAULT_B
      self.k    = DEFAULT_K
      self.seed = DEFAULT_SEED
      self.seed_vec = DEFAULT_SEED_VEC
      self
    end
  end
end
