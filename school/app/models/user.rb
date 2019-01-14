class User < ApplicationRecord
  validates_presence_of :name
  belongs_to :user_role

  before_validation :set_defaults

  def set_defaults
    self.user_role ||= UserRole.find_by_name('user')
  end
end
