class Syabettere < ActiveRecord::Base
  validates :content, presence: true, length: { in: 1..255  }
  default_scope -> { order(created_at: :desc) }
end