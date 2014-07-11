class Attendance < ActiveRecord::Base
  belongs_to :codigo
  validates :codigo_id, :presence => true
  validates :fecha, :presence => true
  validates :hora, :presence => true
end
