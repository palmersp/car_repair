# frozen_string_literal: true

class ReviewsController < ApplicationController
  def new
    @appointment = Appointment.find_by code: params.fetch(:code)    
  end

  def create
    review = Review.create!(
      rating: params.dig(:review, :rating),
      appointment: Appointment.find_by(id: params.dig(:review, :appointment_id))
    )
    redirect_to thanks_path
  end
end