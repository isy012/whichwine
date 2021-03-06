class User < ActiveRecord::Base
	has_many :wines

def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.profile_url = auth.info.image
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

def self.search(search)
  search.present? and all(:conditions => [ 'name LIKE ?', "%#{search.strip}%" ])
end

end
