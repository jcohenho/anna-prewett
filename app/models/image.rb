class Image < ActiveRecord::Base
  belongs_to :post
  has_attached_file :photo, styles: { large: "750x580>", medium: "376x376>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

end
