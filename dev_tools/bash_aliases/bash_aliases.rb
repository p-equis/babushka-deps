dep 'bash aliases' do
  requires 'bash aliases file'
  requires 'bash aliases setup on login'
end

dep 'bash aliases setup on login' do
  met? {
    shell? "cat ~/.bash_profile | grep 'source ~/.bash_aliases'"
  }

  meet {
    shell "echo 'source ~/.bash_aliases' >> ~/.bash_profile"  
  }
end

dep 'bash aliases file' do
  finishedRunning = false

  met? {
    finishedRunning
  }

  meet {
    require 'tempfile'
    file = "~/.bash_aliases".p

    template = 'erb/bash_aliases.erb'
    tempfile = Tempfile.new('babushka_bash_aliases')
    render_erb template, to: tempfile.path
  
    file.write(tempfile.read)
    finishedRunning = true
  }
end
