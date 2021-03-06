class Event < ApplicationRecord
  include Abyme::Model

  belongs_to :user
  has_many :participants, inverse_of: :event
  accepts_nested_attributes_for :participants, reject_if: proc { |attributes| attributes['email'].blank? }

  validates :event_date, presence: true
  validates :gift_amount, presence: true, numericality: true
  validates_associated :participants

  abymize :participants
end
