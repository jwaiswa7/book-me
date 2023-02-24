# frozen_string_literal: true

class Company < ApplicationRecord
  has_many :users, dependent: :destroy
  has_one :service, dependent: :destroy
  has_many :bookings, through: :service

  before_validation :set_access_key, on: :create

  private

  def set_access_key
    self.access_key = SecureRandom.hex
  end
end
