# Hashcheck

Ruby script to check file checksums with the Windows CertUtil Command

**hashcheck.rb** is a Ruby based command line program that checks file checksums and runs as shown below:

```
PS C:\Users\john\Downloads> ruby .\hashcheck.rb .\rubyinstaller-2.3.1-x64.exe SHA256
a883e24b9a2b383170e17c372cec32bdeb2804ebc1ca5997d68d97cdddae883c
PS C:\Users\john\Downloads>
```

**hashcheck.rb** is shown below:

```ruby
#ARGV[0] is the file you want to check. ARGV[1] is the hash algorithm
#Secure_Hash_Algorithm choices: MD2 MD4 MD5 SHA1 SHA256 SHA384 SHA512
shellcommand = `CertUtil -hashfile "#{ARGV[0]}" "#{ARGV[1]}"`
puts shellcommand.inspect.split('\n')[1].split.join
```
