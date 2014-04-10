
dep 'VirtualBox.bin' do
	source 'http://download.virtualbox.org/virtualbox/4.3.10/VirtualBox-4.3.10-93012-OSX.dmg'
end

dep 'vagrant.bin' do
	requires 'VirtualBox.bin'
	source 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.5.2.dmg'
end