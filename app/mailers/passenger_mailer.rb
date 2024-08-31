class PassengerMailer < ApplicationMailer
  def booking_email(passenger)
    Rails.logger.debug("Passenger passed to mailer: #{passenger.inspect}")
    @passenger = passenger
    Rails.logger.debug("Assigned @passenger: #{@passenger.inspect}")
    mail(to: @passenger.email, subject: "Flight Booking Confirmation")
  end
end
