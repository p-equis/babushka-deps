dep 'vagrant sandbox' do
  requires 'vagrant.bin'

  met? {
    shell?("vagrant plugin list | grep sandbox")
  }
  meet {
    log "installing vagrant sandbox plugin"
    shell! "vagrant plugin install sandbox"
  }
end
