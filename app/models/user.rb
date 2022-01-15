class User < ApplicationRecord
  validates :name, :email, :nickname, presence: true
  enum role: [ :admin, :recruitment, :user ]

  def self.find_or_create_from_auth_hash(user_hash)
    info = user_hash.info
    email = info.email

    user = User.find_by(email: email)
    # fail if the user is not found and it's not a super admin email
    return nil unless user || SUPER_ADMIN_EMAILS.include?(email)

    # create users for super admins if needed
    user ||= User.new(email: email)

    # update personal info
    user.name = info.name
    user.image = info.image
    user.nickname = user_hash.provider == "github" ? info.nickname : info.github_nickname

    # set role as :user by default unless already set or super admin
    user.role ||= SUPER_ADMIN_EMAILS.include?(email) ? :admin : :user

    user.save!
    
    # TODO: store login somewhere (maybe an Activity model)

    user
  end
end
