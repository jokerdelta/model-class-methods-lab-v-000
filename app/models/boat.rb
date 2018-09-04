class Boat < ActiveRecord::Base
  belongs_to  :captain
  has_many    :boat_classifications
  has_many    :classifications, through: :boat_classifications

  def self.first_five
    @boats = Boat.first(5)
  end

  def self.dinghy
    #return boats shorter than 20'
  end

  def self.ship
    #return boats 20' or longer
  end

  def self.last_three_alphabetically
    #returns last three boats in alphabetical order
  end

  def self.without_a_captain
    #returns boats without a captain
  end

  def self.sailboats
    #returns all boats that are sailboats
  end

  def self.with_three_classifications
    #returns boats with three classifications
  end

end
