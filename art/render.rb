#!/bin/env ruby
resolutions={'mdpi'=> 1, 'hdpi' => 1.5, 'xhdpi' => 2, 'xxhdpi' => 3}
images = { 'conversations.svg' => ['ic_launcher',48], 'conversations_baloon.svg' => ['ic_activity', 32], 'conversations_mono.svg' => ['ic_notification',24] }
images.each do |source, result|
	resolutions.each do |name, factor|
		size = factor * result[1]
		path = "../res/drawable-#{name}/#{result[0]}.png"
		cmd = "inkscape -e #{path} -C -h #{size} -w #{size} #{source}"
		puts cmd
		system cmd
	end
end
