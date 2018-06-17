# Secure_Hash_Algorithm choices: MD2 MD4 MD5 SHA1 SHA256 SHA384 SHA512

require 'paint'
require 'optparse'

# implement commandline options
options = {:file => nil, :algorithm => nil}

parser = OptionParser.new do |opts|
  opts.banner = "Usage: #{Paint['hashcheck.rb [options]', :red, :white]}"

  opts.on('-f', '--file file', 'Path to file') do |file|
    options[:file] = file
  end

  opts.on('-a', '--algorithm algorithm', 'Algorithm') do |algorithm|
    options[:algorithm] = algorithm
  end

  opts.on('-h', '--help', 'Displays help') do
    puts opts
    exit
  end
end

parser.parse!

if options[:file].nil?
  print 'Enter path to file: '
  options[:file] = STDIN.gets.chomp
end
if options[:algorithm].nil?
  print 'Enter algorithm: '
  options[:algorithm] = STDIN.gets.chomp
end

shell_command = `CertUtil -hashfile "#{options[:file]}" "#{options[:algorithm]}"`
puts shell_command.inspect.split('\n')[1]
