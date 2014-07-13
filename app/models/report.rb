class Report < ActiveRecord::Base
has_many :compilations
has_many :comps, :through => :compilations
end
