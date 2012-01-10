class Fixture < ActiveRecord::Base
  has_many :attendances
  has_many :players, :through => :attendances

  validates :title, :presence => true,
                    :length => { :minimum => 2, :maximum => 50 }
  validates :date, :presence => true
  
  default_scope :order => 'date ASC'
  
  def self.all_upcoming
    where("date >= ?", Date.today())
  end
  
  def to_s
    title + ', ' + date.to_s(:table)
  end
end
