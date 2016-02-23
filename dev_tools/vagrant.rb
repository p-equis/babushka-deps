
dep 'virtualbox.bin' do
  meet {
    shell! "brew cask install virtualbox"
  }
end

dep 'vagrant.bin' do
  requires 'virtualbox.bin'

  meet {
    shell! "brew cask install vagrant"
  }
end
