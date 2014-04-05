require 'spec_helper'

describe Ip do
  context 'when is true' do
    it 'with four octets on one' do
      expect(Ip.valid?('1.1.1.1')).to eq(true)
    end

    it 'with four octets on 255' do
      expect(Ip.valid?('255.255.255.255')).to eq(true)
    end

    it 'with a normal IP' do
      expect(Ip.valid?('192.168.1.1')).to eq(true)
    end
  end

  context 'when is false' do
    it 'with a simple string' do
      expect(Ip.valid?('myIp')).to eq(false)
    end

    it 'with three octets' do
      expect(Ip.valid?('10.0.10')).to eq(false)
    end

    it 'with an octet over 255' do
      expect(Ip.valid?('10.0.10.389')).to eq(false)
    end

    it 'with an octet string' do
      expect(Ip.valid?('10.hola.10.389')).to eq(false)
    end
  end
end
