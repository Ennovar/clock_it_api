class Task < ApplicationRecord
  belongs_to :project, required: false
  has_many :time_entries
  validates_presence_of :name
end
