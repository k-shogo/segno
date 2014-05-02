module Segno
  module MinHash
    def minhash targets, seed
      hash_values = []
      targets.each do |str|
        hash_values << MurmurHash3::V32.str_hash(str, seed)
      end
      hash_values.min
    end

    def bbit_minhash targets, seed
      sprintf("%0#{b}d", minhash(targets, seed).to_s(2))[-b..-1]
    end

    def bbit_minhash_vec targets
      vec = seed_vec.map{|seed| bbit_minhash targets, seed}
      Segno::HashVec.new vec
    end
  end
end
