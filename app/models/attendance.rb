class Attendance < ActiveRecord::Base
  YES = 'Yes'
  NO = 'No'
  UNSURE = 'Unsure'
  WILL_OPTIONS = %w(YES, NO, UNSURE)
  
  belongs_to :fixture
  belongs_to :player
  
  validates :will, :inclusion => { :in => [YES, NO, UNSURE] }
end