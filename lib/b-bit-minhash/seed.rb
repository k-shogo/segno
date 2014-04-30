module BBitMinHash
  module Seed

    def gen_seed length
      seeds = [seed]
      length.times do
        seeds << MurmurHash3::V32.int32_hash(seeds.last)
      end
      seeds.shift
      seeds
    end

  end
end
