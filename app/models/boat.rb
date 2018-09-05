class Boat < ActiveRecord::Base
  belongs_to  :captain
  has_many    :boat_classifications
  has_many    :classifications, through: :boat_classifications


  def self.first_five
    # Boat.where(table[:id].lteq(5).to_sql)
    Boat.limit(5)
   end

  def self.dinghy
    #return boats shorter than 20'
    Boat.where(table[:length].lteq(19).to_sql)
  end

  def self.ship
    #return boats 20' or longer
    Boat.where(table[:length].gteq(20).to_sql)
  end

  def self.last_three_alphabetically
    #returns last three boats in alphabetical order
    Boat.find(:all, :order => "name desc", :limit => 3).reverse
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

  private

  def self.table
    Boat.arel_table
  end


end
