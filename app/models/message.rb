class Message < ApplicationRecord
  belongs_to :user

  scope :visible_to, -> (user) do
      return all.where('messages.user_id = ? OR messages.recipient_email = ?', user.id, user.email)
  end

end
