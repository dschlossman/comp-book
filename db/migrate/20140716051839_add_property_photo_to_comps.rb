class AddPropertyPhotoToComps < ActiveRecord::Migration
	def change
  		add_attachment :comps, :property_photo
	end
end
