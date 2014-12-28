dep 'haskell platform', :template => 'installer' do
  source 'https://www.haskell.org/platform/download/2014.2.0.0/Haskell%20Platform%202014.2.0.0%2064bit.signed.pkg' 
  provides 'ghc', 'cabal'
end
