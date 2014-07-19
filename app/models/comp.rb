class Comp < ActiveRecord::Base
has_many :compilations
has_many :reports, :through => :compilations
before_save :calculate_price_psf
validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0 }
validates_numericality_of :building_size
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
        number = self.price/self.building_size
        self.price_psf_building = number.round(2)
      end
    end
end
