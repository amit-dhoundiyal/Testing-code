class User < ApplicationRecord
	acts_as_token_authenticatable
	has_secure_password
  
	validates :name, presence: true
	validates :email, presence: true,uniqueness: true
	validates :password, length: { in: 6..20 }
	validates :mobile_no, length: { in: 8..15 },uniqueness: true
	validates :mobile_code, presence: true


	def self.generate_password
	   seed = "--#{rand(10000000)}--#{Time.now}--#{rand(10000000)}"
	   secure_password = Digest::SHA1.hexdigest(seed)[0,8]
	   return secure_password
    end
end
