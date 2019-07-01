def packages
  Dir["*"].select { |d| File.directory? d }
end

desc "Install dotfiles"
task :install do
  packages.each { |package| sh "stow -t $HOME -R #{package}" }
end

desc "Uninstall dotfiles"
task :uninstall do
  packages.each { |package| sh "stow -t $HOME -D #{package}" }
end

task default: :install
