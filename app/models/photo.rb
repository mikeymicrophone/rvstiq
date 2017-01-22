class Photo < ApplicationRecord
  belongs_to :job
  mount_uploader :image, OverviewUploader
end
