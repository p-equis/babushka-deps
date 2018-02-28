dep 'docker' do
  requires 'docker.bin'
end

dep 'docker.bin' do
  meet {
    shell('brew cask install docker-toolbox')
  }
end
