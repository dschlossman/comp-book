class Comp < ActiveRecord::Base
has_many :compilations
has_many :reports, :through => :compilations
before_save :calculate_price_psf

    def calculate_price_psf
      if building_size.present?
        self.price_psf_building = self.price/self.building_size
      end
    end
end
