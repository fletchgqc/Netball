class Player < ActiveRecord::Base
  has_many :attendances
  has_many :fixtures, :through => :attendances
  
  validates :name, :presence => true,
                    :length => { :minimum => 2, :maximum => 30 }

  default_scope :order => 'name ASC'
              
  def to_s
    name
  end
end
