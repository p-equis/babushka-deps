dep 'chrome' do
  requires 'Google Chrome.app'
end

dep "Google Chrome.app" do
  source "http://dl.google.com/chrome/mac/stable/GoogleChrome.dmg"
end
