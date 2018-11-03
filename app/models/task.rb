class Task < ApplicationRecord
  def self.percent_incomplete
    where(complete: false).count / self.count
  end
end
