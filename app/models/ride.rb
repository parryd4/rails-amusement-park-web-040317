class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :user
  belongs_to :attraction

  def check_tickets
    self.user.tickets < self.attraction.tickets
  end
  def check_height
    self.user.height < self.attraction.min_height
  end

  def take_ride

    if check_tickets && check_height
      "Sorry. You do not have enough tickets to ride the #{self.attraction.name}. You are not tall enough to ride the #{self.attraction.name}."
    elsif check_height
      "Sorry. You are not tall enough to ride the #{self.attraction.name}."
    elsif check_tickets
      "Sorry. You do not have enough tickets to ride the #{self.attraction.name}."
    else
      self.user.tickets -= self.attraction.tickets
      self.user.nausea += self.attraction.nausea_rating
      self.user.happiness += self.attraction.happiness_rating
      self.user.save
      self.save
      "Thanks for riding the #{self.attraction.name}!"
    end

  end

end
