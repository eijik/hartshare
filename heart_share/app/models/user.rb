class User < ActiveRecord::Base
  mount_uploader :image, AttachmentUploader
end
