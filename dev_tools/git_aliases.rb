dep 'git aliases' do
  requires 'amend.git_alias'
  requires 'st.git_alias'
  requires 'lg.git_alias'
  requires 'co.git_alias'
  requires 'ci.git_alias' # commit incremental change
end

dep 'amend.git_alias' do
  long_form 'commit --amend'
end

dep 'st.git_alias' do
  long_form 'status'
end

dep 'lg.git_alias' do
  long_form 'log --oneline'
end

dep 'co.git_alias' do
  long_form 'checkout'
end

dep 'ci.git_alias' do
  long_form 'commit --amend --reuse-message=HEAD'
end
