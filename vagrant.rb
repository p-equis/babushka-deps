
dep 'VirtualBox.app' do
	source 'http://download.virtualbox.org/virtualbox/4.3.10/VirtualBox-4.3.10-93012-OSX.dmg'
end

dep 'vagrant.app' do
	requires 'VirtualBox.app'
	source 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.1.dmg'
end
