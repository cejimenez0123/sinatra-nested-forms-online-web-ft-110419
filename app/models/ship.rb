class Ship

  attr_accessor :type, :name, :booty
    @@ships = []
  def initialize(hash)
    @type = hash[:type]
    @name = hash[:name]
    @booty = hash[:booty]
    @@ships << self
  end
  def self.all
    @@ships
  end
  def self.clear
    @@ships.clear

  end
end
