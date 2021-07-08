class Participant < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  # attr_accessor :name, :email

  # def name
  #   @name = name
  # end

  # def email
  #   @email = email
  # end

  # def assigned_participant
  # end
end
