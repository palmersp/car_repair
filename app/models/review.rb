# frozen_string_literal: true

class Review < ActiveRecord::Base
  belongs_to :appointment

  validates :rating, presence: true
  validates_inclusion_of :rating, in: 1..5
end
