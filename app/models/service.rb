# frozen_string_literal: true

class Service < ApplicationRecord
  belongs_to :company
  has_many :bookings, dependent: :destroy
end
