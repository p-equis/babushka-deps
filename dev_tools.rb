dep 'dev tools' do
  requires 'nodejs.bin'
  requires 'haskell platform'
  requires 'android-sdk.bin'
  requires 'IntelliJ IDEA 14.app'
  requires 'android dev setup'
  requires 'vagrant.bin'
end

dep "IntelliJ IDEA 14.app" do
  version "14.0.2"
  source "http://download-cf.jetbrains.com/idea/ideaIC-14.0.2.dmg"
end

