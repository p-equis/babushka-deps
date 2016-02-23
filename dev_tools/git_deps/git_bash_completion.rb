dep 'git bash completion' do
  requires 'git.bin'

  met? { 
    "~/.git-completion.bash".p.exists? 
  }

  meet {
    shell! "curl #{git_completion_url} -o ~/.git-completion.bash"
    shell! "echo 'source  ~/.git-completion.bash' >> ~/.bash_profile"
  }
  
  def git_completion_url
    'https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash' 
  end
end
