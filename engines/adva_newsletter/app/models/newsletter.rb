class Newsletter < ActiveRecord::Base
  has_many :issues
  has_many :subcriptions, :as => :subscribable
  
  attr_accessible :title, :desc

  validates_presence_of :title

  named_scope :all_included, :include => :issues
end
