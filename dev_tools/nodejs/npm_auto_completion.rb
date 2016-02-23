dep 'npm auto completion' do
  requires 'nvm'

  met? {
    '~/.npm-completion.bash'.p.exists?
  }

  meet {
    shell! 'npm completion >> ~/.npm-completion.bash' 
    shell! 'echo "source ~/.npm-completion.bash" >> ~/.bash_profile'
  }
end
