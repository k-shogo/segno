# -*- encoding: utf-8 -*-

require 'spec_helper'

describe BBitMinHash::Generator do

  context '#respond_to?'do
    it '存在するメソッドでtrueが返る' do
      expect(BBitMinHash.respond_to?(:configure)).to be_true
    end

    it '存在しないメソッドでfalseが帰る' do
      expect(BBitMinHash.respond_to?(:hoge)).to be_false
    end
  end

  # it 'メソッドを呼び出せる' do
  #   expect(BBitMinHash.api_key('user_id')).to_not be_nil
  # end

end
