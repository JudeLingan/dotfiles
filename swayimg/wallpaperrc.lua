swayimg.set_mode("gallery")

swayimg.gallery.on_key("Return", function()
	print(swayimg.gallery.get_image().path)
	swayimg.exit()
end)

swayimg.gallery.on_key("h", function()
	swayimg.gallery.switch_image("left")
end)

swayimg.gallery.on_key("j", function()
	swayimg.gallery.switch_image("down")
end)

swayimg.gallery.on_key("k", function()
	swayimg.gallery.switch_image("up")
end)

swayimg.gallery.on_key("l", function()
	swayimg.gallery.switch_image("right")
end)
