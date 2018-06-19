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

<a href="https://info.flagcounter.com/VIHH"><img src="https://s04.flagcounter.com/count2/VIHH/bg_FFFFFF/txt_000000/border_CCCCCC/columns_2/maxflags_250/viewers_0/labels_1/pageviews_0/flags_0/percent_0/" alt="Flag Counter" border="0"></a>
