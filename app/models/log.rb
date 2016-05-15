class Log < ActiveRecord::Base

  scope :info, ->(message) {
    create(level: "info", message: message)
  }

  scope :warn, ->(message) {
    create(level: "warn", message: message)
  }

  scope :unread, ->(time) {
    where("created_at > ?", time)
  }

end
