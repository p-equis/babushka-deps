dep 'heroku' do
  requires 'heroku-toolbelt.bin'
end

dep 'heroku-toolbelt.bin' do
  provides 'heroku'
end
 
