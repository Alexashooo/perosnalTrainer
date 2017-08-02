class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  before_save {self.role ||= :member}

  enum role: [:member, :trainer, :admin]
end
