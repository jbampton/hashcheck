#ARGV[0] is the file you want to check. ARGV[1] is the hash algorithm
#Secure_Hash_Algorithm choices: MD2 MD4 MD5 SHA1 SHA256 SHA384 SHA512

shellcommand = `CertUtil -hashfile "#{ARGV[0]}" "#{ARGV[1]}"`
puts shellcommand.inspect.split('\n')[1].split.join
