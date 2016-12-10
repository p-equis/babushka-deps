dep 'visual studio code' do
  requires 'Visual Studio Code.app'
end

dep 'Visual Studio Code.app' do
  meet {
    shell('brew cask install visual-studio-code')
  }
end
