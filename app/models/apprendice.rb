class Apprendice < ActiveRecord::Base
  has_attached_file :photo, :styles => {:medium => "300X300>", :small => "150X150>", :thumb =>"50X50>"},
                            :url => "/assets/apprendices/:id/:style/:basename.:extension",
                            :path => ":rails_root/public//assets/apprendices/:id/:style/:basename.:extension"
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_size :photo, :less_than => 2.megabyte
end
