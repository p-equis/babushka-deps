dep 'Sublime Text' do
  requires 'Sublime Text.app', 'sublime.bin'
end

dep 'Sublime Text.app' do
  source 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203065.dmg'
end

dep 'sublime.bin' do
  meet {
  	home_dir = ENV['HOME']
  	sudo "ln -s '#{home_dir}/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' /usr/local/bin/sublime"
  }
end