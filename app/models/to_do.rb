class ToDo < ApplicationRecord
  validates :user_id, presence: true
  validates :title, presence: true
  validates :deadline, presence: true
  validates :completed, inclusion: { in: [true, false] }
end
