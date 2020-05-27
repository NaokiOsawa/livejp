class Event < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_many :event_artists, dependent: :destroy
  has_many :artists, through: :event_artists
end
