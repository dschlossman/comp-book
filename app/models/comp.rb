class Comp < ActiveRecord::Base

has_many :compilations
has_many :reports, :through => :compilations
before_save :calculate_price_psf
  # This method associates the attribute ":property_photo" with a file attachment
  has_attached_file :property_photo, 
  :styles => {
    thumb: '100x100>',
    square: '200x200#',
    medium: '400x400>'
  }



  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :property_photo, :content_type => /\Aimage\/.*\Z/




    def calculate_price_psf
      if building_size.present?
        self.price_psf_building = self.price/self.building_size
      end
    end
end
