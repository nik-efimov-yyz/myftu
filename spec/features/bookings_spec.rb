require "spec_helper"

describe "Booking a Flight" do

  describe "Step 1: Booking Menu" do
    it "gives choice to book any aircraft of a certain type"
    it "gives choice to book a specific aircraft if allowed in settings"
    it "does not give choice to book a specific aircraft if not allowed in settings"
  end

  describe "Step 2: Calendar" do

    it "shows availability calendar"

    describe "30 day view" do
      it "shows fully booked days as red"
      it "shows fully available days as blue"
      it "shows partially booked days as an hourly overview of the day"
    end

    describe "7 day view" do
      it "shows hourly overview of availability"
    end

    it "allows booking standby for the times already booked"
  end

  describe "Step 3a: Normal Booking" do
    it "shows a booking form"
    it "prompts for start time"
    it "prompts for end time"
    it "prompts for proposed flight route"
  end

  describe "Step 3b: Standby Booking" do
    it "shows a message that the flight is booked standby"
    it "shows other people standby for the same time"
  end

  describe "Step 4: Booking Complete" do
    it "shows a booking complete page"
    it "sends an email to user"
    it "sends an email to operator, if set so in settings"
    it "shows a link to flight planner"
  end

end