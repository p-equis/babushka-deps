dep 'nvm' do
  met? {
    '~/.nvm'.p.exists?
  }
  meet {
    shell! 'curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash'
  }
end
