module UsersHelper
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/ayaka.hostos@gmail.com?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
