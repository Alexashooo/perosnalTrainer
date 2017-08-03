class Message < ApplicationRecord
  belongs_to :user
  validates :recipient_email, presence: true
  validates :subject,  length: { minimum: 5 }, presence: true

  scope :visible_to, -> (user) do
      return all.where('messages.user_id = ? OR messages.recipient_email = ?', user.id, user.email)
  end

end
