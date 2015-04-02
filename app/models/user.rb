class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
has_many :posts


has_attached_file :avatar,
                   :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :storage => :s3,
                    :bucket => 'instaclone-justin',
                    :url =>':s3_domain_url',
                    :path => ':class/:attachment/:id_partition/:style/:filename',
                    :default_url => "/images/:style/missing.png"

validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

validates_presence_of :full_name, :profile_name

end


