Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['1415045145375144'], ENV['cbd8b38d6888cfbab70c643d9ac0ea02']
end
