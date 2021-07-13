class Participant < ApplicationRecord
  belongs_to :event
  # belongs_to :secret_santa, class_name: "Participant"
  has_one :secret_santa, class_name: "Participant", required: false

  validates :event, presence: true
end
