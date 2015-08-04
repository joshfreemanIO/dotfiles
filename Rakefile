require 'rake'

FILES_TO_LINK = [
  '.gitcommittemplate',
  '.gitconfig',
  '.gitignore_global',
  '.tmux.conf',
  '.vimrc',
  '.zshrc'
]

desc "install the dot files into user's home directory"

task :install do
  copy_dotfiles

  copy_zshenv
end

def copy_dotfiles
  preference = Preference.new

  FILES_TO_LINK.each do |filename|
    if dotfile_exists?(filename)
      next unless preference.user_wants_to_link?(filename)
    end

    link_file(filename)
  end
end

# Need to do this to make vim use RVM's ruby version
def copy_zshenv
  puts "Moving zshenv to zshrc"
  system %Q{sudo cp /etc/zshenv /etc/zshrc}
end

def dotfile_exists?(filename)
  File.exists?(File.join("#{Dir.home}/#{filename}"))
end

def replace_file(file)
  link_file(file)
end

def link_file(filename)
  if dotfile_exists?(filename)
    puts "removing #{Dir.home}/#{filename}"
    system %Q{rm "$HOME/#{filename}"}
  end

  puts "linking #{Dir.home}/#{filename} to #{Dir.pwd}/#{filename}"
  system %Q{ln -s "#{Dir.pwd}/#{filename}" "#{Dir.home}/#{filename}"}
end

class Preference
  attr_reader :replace_all

  def initialize
    @replace_all = false
  end

  def user_wants_to_link?(filename)
    dotfile_missing?(filename) || replace_all || replace_file?(filename)
  end

  private

  def replace_file?(filename)
    print "overwrite #{Dir.home}/#{filename}? [ynaq] "

    case $stdin.gets.chomp
    when 'a'
      @replace_all = true
      true
    when 'y'
      true
    when 'q'
      puts "quitting"
      exit
    else
      puts "skipping #{Dir.home}/#{filename}"
      false
    end
  end

  def dotfile_missing?(filename)
    !dotfile_exists?(filename)
  end
end
