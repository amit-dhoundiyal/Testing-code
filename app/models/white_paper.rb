class WhitePaper < ApplicationRecord
	mount_uploader :file, ImageUploader
	has_one :image,as: :imageable,dependent: :destroy
end
