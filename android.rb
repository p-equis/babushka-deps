dep 'android dev setup' do
  requires 'android-sdk.bin'
  requires 'ANDROID_HOME environment variable'
end

dep 'android-sdk.bin' do
  provides 'android'
end

dep 'ANDROID_HOME environment variable' do
  android_home = '/usr/local/opt/android-sdk'
  bash_profile = '~/.bash_profile'
  export_command = "export ANDROID_HOME=#{android_home}"
  
  met? {
    shell? "cat ~/.bash_profile | grep '#{export_command}'" 
  }

  meet {
    shell ("echo '#{export_command}' >> #{bash_profile}")
  }
end
