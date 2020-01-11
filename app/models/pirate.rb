class Pirate
  attr_accessor :name,:weight,:height, :ships
  @@pirates = []
  def initialize(hash)
    @name = hash[:name]
    @weight = hash[:weight]
    @height = hash[:height]
    @ships = hash[:ships]
    @@pirates << self
  end
  def self.clear
    @@pirates.clear
  end
end
