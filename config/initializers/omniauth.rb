Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 1417767508351966, "b9dd658aa0daca52f777f2f810a663e4"
    # scope: 'email,user_birthday,read_stream', display: 'popup'

end