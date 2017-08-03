class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  before_save {self.role ||= :member}

  has_many :messages, -> {:visible_to}

  enum role: [:member, :trainer]
end
