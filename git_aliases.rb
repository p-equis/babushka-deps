dep 'git aliases' do
  gitAlias('amend', long_form: 'commit --amend')
  gitAlias('st', long_form: 'status')
  gitAlias('lg', long_form: 'log --oneline')
  gitAlias('co', long_form: 'checkout')
end

def gitAlias(short_form, long_form)
  newDep = "#{short_form}.git_alias"

  dep newDep do 
    long_form long_form 
  end

  requires newDep
end

