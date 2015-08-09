dep 'vagrant sandbox' do
  requires 'vagrant.bin'

  met? {
    shell?("vagrant plugin list | grep sahara")
  }
  meet {
    log "installing vagrant sahara plugin"
    shell! "vagrant plugin install sahara"
  }
end
