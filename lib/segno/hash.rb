module Segno
  class Hash
    attr_accessor :vec
    VALID_SERIALIZE_PATTERN = /\A(?<b>[0-9]{1,})\.(?<k>[0-9]{1,})\.(?<hash>[0-9a-f]{1,})\z/

    def initialize vec
      @vec = vec
    end

    def to_s
      @vec.join.to_i(2).to_s(16)
    end

    def b
      @vec.first.size
    end

    def k
      @vec.size
    end

    def jaccard hash_vec
      n = [self.vec, hash_vec.vec].transpose.map{|v| v[0]==v[1]}.select{|x| x}.size
      (2 ** self.b * Rational(n,k) - 1) / (2 ** self.b - 1)
    end

    def self.dump hash_vec
      [hash_vec.b, hash_vec.k, hash_vec.to_s].join('.')
    end

    def self.load string
      if key = string.match(VALID_SERIALIZE_PATTERN)
        b = key['b'].to_i
        k = key['k'].to_i
        hash = key['hash']
        vec = sprintf("%0#{b*k}d", hash.to_i(16).to_s(2)).scan(/.{1,#{b}}/)
        new vec
      end
    end
  end
end
