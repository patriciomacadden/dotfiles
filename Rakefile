require "fileutils"

DEST_DIR = Dir.home
EXCLUDE = %w(. .. .git .gitignore Brewfile Rakefile README.md)

def green(msg)
  "\033[0;32m#{msg}\033[0m"
end

def red(msg)
  "\033[0;31m#{msg}\033[0m"
end

def l_n_s(f, overwrite)
  source = File.absolute_path f
  target = File.join DEST_DIR, f

  begin
    FileUtils.ln_s source, target, force: overwrite
    puts "#{green "✔"} #{target}"
  rescue Errno::EEXIST
    puts "#{red "✘"} #{target}"
  end
end

def r_m_r_f(f)
  target = File.join DEST_DIR, f

  FileUtils.rm_rf target
  puts "#{green "✔"} #{target}"
end

desc "Install dotfiles"
task :install do
  print "Overwrite existing files (y/N)? "
  overwrite = %w(y yes).include? STDIN.gets.strip.downcase

  Dir.glob("*", File::FNM_DOTMATCH).reject { |f| EXCLUDE.include? f }.each do |f|
    if f == ".config"
      Dir.glob(File.join(f, "*")).each { |s| l_n_s s, overwrite }
    else
      l_n_s f, overwrite
    end
  end
end

desc "Uninstall dotfiles"
task :uninstall do
  print "Are you sure (y/N)? "
  sure = %w(y yes).include? STDIN.gets.strip.downcase

  unless sure
    puts "#{red "✘"} Aborted"
    exit
  end

  Dir.glob("*", File::FNM_DOTMATCH).reject { |f| EXCLUDE.include? f }.each do |f|
    if f == ".config"
      Dir.glob(File.join(f, "*")).each { |s| r_m_r_f s }
    else
      r_m_r_f f
    end
  end
end

task default: :install

