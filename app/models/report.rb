class Report < ActiveRecord::Base
has_many :compilations
has_many :comps, :through => :compilations
validates_presence_of :name, :description
validates :comps, :length => { :minimum => 1 }
end
