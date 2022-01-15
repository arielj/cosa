Rails.application.config.middleware.use OmniAuth::Builder do
  unless Rails.env.production?
    provider :developer,
      fields: [:email, :github_nickname, :name],
      callback_path: "/cosa/auth/developers/callback"
  end
    
  provider :github,
    ENV['GITHUB_KEY'],
    ENV['GITHUB_SECRET'],
    callback_path: "/cosa/auth/github/callback"
end