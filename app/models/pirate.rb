class Pirate

  attr_accessor :name, :weight, :height, :ships

  @@all = []

  def initialize(params)
    # binding.pry
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @ships = []
    @@all << self
    self.add_ships(params[:ships])
  end

  def self.all
    @@all
  end

  def add_ships(params)
    params.each do |param|
      @ships << Ship.new(param)
    end
  end


end
