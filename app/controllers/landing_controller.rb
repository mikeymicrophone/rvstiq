class LandingController < ApplicationController
  def entry
    @phone_number = ENV['NEW_LEADS_PHONE_NUMBER']
    @email_address = ENV['NEW_LEADS_EMAIL_ADDRESS']
    @jobs = Job.all
  end
end
