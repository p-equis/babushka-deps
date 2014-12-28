meta :git_alias do
  accepts_value_for :long_form
  accepts_value_for :short_form, :basename

  template {
   requires 'git.bin'

    met? {
      raw_shell("git config --global --list").stdout.lines.grep(Regexp.new("alias.#{short_form}")).any?  
    }

    meet {
      log "setting" 
      shell! "git config --global alias.#{short_form} '#{long_form}'"
    }
  }
end

