class Log < ActiveRecord::Base

  scope :success, ->(message) {
    create(level: "success", message: message)
  }

  scope :info, ->(message) {
    create(level: "info", message: message)
  }

  scope :warning, ->(message) {
    create(level: "warning", message: message)
  }

  scope :danger, ->(message) {
    create(level: "danger", message: message)
  }

  scope :unread, ->(time) {
    where("created_at > ?", time)
  }

end
