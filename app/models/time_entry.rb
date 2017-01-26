class TimeEntry < ApplicationRecord
  belongs_to :task, required: false
  has_one :project, through: :task
  before_create :set_start_time

  def set_start_time
    self.start_time = Time.new
  end

  def as_json(options = {})
    super({ include: :task }.merge(options))
  end
end
