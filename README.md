# Hashcheck

**``hashcheck.rb``** is a Ruby based command line program that
checks file checksums with the Windows CertUtil Command.

The secure hash algorithm choices are: md2 md4 md5 sha1 sha256 sha384 sha512

```
$ ruby hashcheck.rb -h
Usage: hashcheck.rb [options]
    -f, --file file                  Path to file
    -a, --algorithm algorithm        Algorithm
    -h, --help                       Displays help
```
To enter interactive mode type:
```
$ ruby hashcheck.rb
```
Code overview of **``haskcheck.rb``** can be seen on the [RubyCritic](http://thebeast.me/hashcheck/rubycritic/overview.html) page.
