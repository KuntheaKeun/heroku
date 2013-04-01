class User < ActiveRecord::Base
  attr_accessible :Age, :Date_of_birth, :Email_address, :First_name, :Last_name, :Nationality, :Sex, :work_experiance, :image
  mount_uploader :image,ImageUploader
end
