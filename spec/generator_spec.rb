# -*- encoding: utf-8 -*-

require 'spec_helper'

describe Segno::Generator do

  context '#respond_to?'do
    it '存在するメソッドでtrueが返る' do
      expect(Segno.respond_to?(:configure)).to be_true
    end

    it '存在しないメソッドでfalseが帰る' do
      expect(Segno.respond_to?(:hoge)).to be_false
    end
  end

  # it 'メソッドを呼び出せる' do
  #   expect(Segno.api_key('user_id')).to_not be_nil
  # end

end
