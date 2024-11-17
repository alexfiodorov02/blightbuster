class Report < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :location, presence: true
  validates :description, presence: true
  validates :photo, presence: true
  validates :status, inclusion: { in: %w[pending resolved] }

  # Virtual attribute for the form
  attr_accessor :email

  # Callback to set user_id from the provided email
  before_validation :assign_user_id_from_email

  private

  def assign_user_id_from_email
    return if email.blank?

    user = User.find_or_create_by(email: email) do |new_user|
      # Customize attributes as necessary, e.g., set default name
      new_user.name = "Default Name" # Replace with logic if needed
    end

    self.user_id = user.id if user
  end
end
