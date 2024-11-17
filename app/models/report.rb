class Report < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader # Assuming you're using CarrierWave for file uploads

  validates :location, presence: true
  validates :description, presence: true
  validates :status, presence: true
end
