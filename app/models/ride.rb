class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :user
  belongs_to :attraction

  def take_ride
    #  has a method 'take_ride' that accounts for the user not having enough tickets (FAILED - 43)
    @response = ""
    if self.user.tickets < self.attraction.tickets
      @response += "Sorry. You do not have enough tickets to ride the #{attraction.name}."
    end

    if self.user.height < self.attraction.min_height
      if @response.length > 1
        @response += " You are not tall enough to ride the #{attraction.name}."
      else
        @response += "Sorry. You are not tall enough to ride the #{attraction.name}."
      end

    end



    self.user.tickets -= self.attraction.tickets
    self.user.nausea += self.attraction.nausea_rating
    self.user.happiness += self.attraction.happiness_rating
    self.user.save
    @response
    #  has a method 'take_ride' that accounts for the user not being tall enough (FAILED - 44)
    #  has a method 'take_ride' that accounts for the user not being tall enough and not having enough tickets (FAILED - 45)
    #  has a method 'take_ride' that updates ticket number (FAILED - 46)
    #  has a method 'take_ride' that updates the user's nausea (FAILED - 47)
    #  has a method 'take_ride' that updates the user's happiness (FAILED - 48)


  end

end
