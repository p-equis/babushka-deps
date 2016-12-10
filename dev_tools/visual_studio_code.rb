dep 'visual studio code' do
  requires 'Visual Studio Code.app'
  requires 'vs code c#'
end

dep 'Visual Studio Code.app' do
  meet {
    shell('brew cask install visual-studio-code')
  }
end

dep 'vs code c#' do
  met? {
    shell('code --list-extensions | grep "ms-vscode.csharp"') 
  }
  meet {
    shell('code --install-extension ms-vscode.csharp')
  }
end
