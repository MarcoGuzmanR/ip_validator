class Ip

  def self.valid?(ip)
    octets = ip.split('.')
    return false if octets.length < 4 || octets.length > 4
    return false if octets[0].to_i < 1
    octets.each do | octet |
      return false if octet.to_i < 1 || octet.to_i > 255
    end
    return true
  end

end
