dep 'dev tools' do
  requires 'nodejs.bin'
  requires 'haskell platform'
  requires 'android-sdk.bin'
  requires 'IntelliJ IDEA 14.app'
end

dep 'haskell platform', :template => 'installer' do
  source 'https://www.haskell.org/platform/download/2014.2.0.0/Haskell%20Platform%202014.2.0.0%2064bit.signed.pkg' 
  provides 'ghc', 'cabal'
end

dep "IntelliJ IDEA 14.app" do
  version "14.0.2"
  source "http://download-cf.jetbrains.com/idea/ideaIC-14.0.2.dmg"
end

