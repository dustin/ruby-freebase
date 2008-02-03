def install(file)
  puts "Installing: #{file}"
  target = File.join(File.dirname(__FILE__), '..', '..', '..', file)
  if File.exists?(target)
    puts "target #{target} already exists, skipping"
  else
    FileUtils.cp File.join(File.dirname(__FILE__), file), target
  end
end

install File.join( 'config', 'freebase.yml' )

puts IO.read(File.join(File.dirname(__FILE__), '..', 'README'))

puts "\n\nIf you haven't yet done so, please install the freebase gem:\n\t[sudo] gem install freebase"

