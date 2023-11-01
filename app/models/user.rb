class User < ApplicationRecord
    has_secure_password
    validates_presence_of :email
    validates_uniqueness_of :email
    validates_presence_of :username
    validates_presence_of :position
    validates :status, inclusion: { in: %w(active blocked) }

    attr_accessor :last_login_at

  def last_login_at
    read_attribute(:last_login_at) || Time.zone.now
  end

  def last_login_at=(value)
    write_attribute(:last_login_at, value)
  end
end
