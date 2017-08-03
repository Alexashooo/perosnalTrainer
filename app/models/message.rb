class Message < ApplicationRecord
  belongs_to :user

  scope :visible_to, -> (user) do
      return all.where('messages.user_id = ? OR messages.recipient_id = ?', user.id, user.id)
  end

end
