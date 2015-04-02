class Post < ActiveRecord::Base
  belongs_to :user

  has_attached_file :picture,
                    :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :storage => :s3,
                    :bucket => 'instaclone-justin',
                    :url =>':s3_domain_url',
                    :path => ':class/:attachment/:id_partition/:style/:filename',
                    :default_url => "/images/:style/missing.png"

 validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

end
