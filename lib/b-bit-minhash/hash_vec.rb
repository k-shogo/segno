module BBitMinHash
  class HashVec
    attr_accessor :b, :k, :vec

    def initialize b, k, vec
      @b = b
      @k = k
      @vec = vec
    end

    def to_s
      @vec.join.to_i(2).to_s(16)
    end

    def self.dump hash_vec
      {
        b:   hash_vec.b,
        k:   hash_vec.k,
        vec: hash_vec.to_s
      }.to_json
    end

    def self.load string
      param = JSON.load(string)
      b = param['b']
      k = param['k']
      vec = sprintf("%0#{b*k}d", param['vec'].to_i(16).to_s(2)).scan(/.{1,#{b}}/)
      new b, k, vec
    end
  end
end
