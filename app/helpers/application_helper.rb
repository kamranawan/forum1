module ApplicationHelper
	def gravatar_for(first_name, options ={ size: 80})
		gravatar_id = Digest::MD5::hexdigest(first_name.email.downcase)
		size = options[:size]
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
		image_tag(gravatar_url, alt: first_name, class: "gravatar")		
	end
end
