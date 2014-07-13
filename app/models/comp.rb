class Comp < ActiveRecord::Base
has_many :compilations
has_many :reports, :through => :compilations
end
