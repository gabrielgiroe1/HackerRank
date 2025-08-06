class Task < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :status, inclusion: { in: %w[todo doing done] }, allow_nil: false

  scope :by_status, ->(status) { where(status: status) }
  scope :by_user, ->(user_id) { where(user_id: user_id) }

  enum :status, { todo: "todo", doing: "doing", done: "done" }
end
