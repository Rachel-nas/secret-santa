class Event < ApplicationRecord
  belongs_to :user
  has_many :participants, dependent: :destroy

  validates :event_date, presence: true
  validates :gift_amount, presence: true, numericality: true
end
