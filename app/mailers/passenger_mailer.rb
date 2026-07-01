class PassengerMailer < ApplicationMailer
  default from: "applecookieisjoel@gmail.com"

  def booking_email
    @passenger = params[:passenger]
    @url = url_for(@passenger.booking)
    mail(to: @passenger.email, subject: "Your flight has been booked!")
  end
end
