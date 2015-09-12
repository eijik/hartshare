class SledGroup < ActiveRecord::Base
  belongs_to :sled_id
  belongs_to :group_id
end
