class User < ActiveRecord::Base
  mount_uploader :image, AttachmentUploader
  belongs_to :group
  belongs_to :home, class_name:'Group'
end
