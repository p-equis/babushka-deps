dep 'iterm' do
  requires 'iterm.app'
end

dep 'iterm.app' do
  meet {
   shell('brew cask install iterm2')
  }
end
