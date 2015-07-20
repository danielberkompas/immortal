##### Signed by https://keybase.io/dberkom
```
-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAABCgAGBQJVrR3KAAoJEKU82t1CbYQM3H0P/11uPrhP6RpMd/Spaylhs3Dg
NakROUMoJICv9KYwy7Mx/pLlASUWnqFLhCdXAIIWye9eJiS2QU+Wd9ABYn1C8u8I
c7WWQkRbQyax1vEfcj9GDG5oh6n2oCDpcHP5x7eZJPe8Jt2tBAlkvnMS5eR0FBY6
AylY29pgZeU7nw2ZBxEZTZa/3wx4HU7IGIGCg9h8hJFuruhNkEsC+m812wz/xwIe
LGpcUi2viQLoIZWQSy0YLD8rSLL0VRVSJzobBTmrDyialHM/3Tau0g/Tk9Zpz/BY
PU3dyDxLLtexiDu30xA5gj+NouXrWyj8LoXZnhMEKhKf+3jbox+3087Ji0rNbS/6
PlvDTLnfNNF8g0avwU7Fepv8qhfyRtcdQaOcNBrHGR4C3immhP5izQmNT+suxoOq
XofD7fYiVIa3tsikJBR0WnmHGiksIcCAmdHfbHF5jeFwS/9prZy4d4klHNVihzS2
sgS7iYSvrEQG/phZmDh7I22Ykw6cC7swi33TUsutQ7ogmnsyUZ542u7TCpx7nRiP
F3QhzkVxeYdtsz/KX5gejuAtp5kIyHwiQZCVSiOaAZASJWxFQGsSucN5qu228+MP
vLQbvnl78yUEaZupaTNBngE5MZfuwkQpc5wcKV+dDGf6Ia3uI95j9zXqyWhyHfC/
ia4Kx/JDOhUShAcZ+tK9
=G3L3
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size  exec  file                              contents                                                        
            ./                                                                                                
39            .gitignore                      6852329ebe6cd9ed388b24316ea68612637cba18d8e6d508c502bafbac0a6c41
624           .travis.yml                     059cc9749f5eae5b5eeafe16049f34b6e6977803610ebcffd70bcd4c106d8ccb
559           CHANGELOG.md                    d8808c0aeee3da4a13d9ff146d7cb9c0254c11245eb671731738e00d6c5ff364
436           CONTRIBUTING.md                 d23dece801790afb23510cdb0c9bec59ce1684349a517b1d2236eb136dee3b04
1083          LICENSE                         a24b375a609f6c84e82c1458fbb0383678e3f492ffb83912731fa5313831a7c9
698           README.md                       fa2f0dd2a5fcf5f2376089d26f15d305bce3f972d6102c153edd9084eb350e95
              config/                                                                                         
1030            config.exs                    2d43b2f33a68081b675f8cedca5e74e5bdece4cd74258308326347b55ba85231
              lib/                                                                                            
                immortal/                                                                                     
3634              ets_table_manager.ex        acaf9800a8e849fb1e195abfb80e5412b525be09b27db03333474b884fb54b72
391             immortal.ex                   fae89bd37cd3100de85b66a5dd048daf1d54f8546ea83c025a3cdd471be4a89a
1497          mix.exs                         b5298a5f0845cb1d7f7b10021f03a38d756ae01fdf210f2b25de79591912395a
116           mix.lock                        0464f58aafcacb881a220f861d373153041800d0cbee8889e13626cecb1d6992
              script/                                                                                         
621   x         release                       ac5c0088bca2a25568fa5bb438ea19666c01b053cdb4d116676ba85c20ab3bf5
              test/                                                                                           
                immortal/                                                                                     
1839              ets_table_manager_test.exs  f898247699ea34ff8e38a2cf6b7ad3bbc2b52759152bebd2750167e0a8e202d0
48              immortal_test.exs             24b0f61d10195d2b404d1a5c304c1197b7fe1fe555524e5f8b91de3ee47950e3
15              test_helper.exs               b086ec47f0c6c7aaeb4cffca5ae5243dd05e0dc96ab761ced93325d5315f4b12
```

#### Ignore

```
/SIGNED.md
```

#### Presets

```
git      # ignore .git and anything as described by .gitignore files
dropbox  # ignore .dropbox-cache and other Dropbox-related files    
kb       # ignore anything as described by .kbignore files          
```

<!-- summarize version = 0.0.9 -->

### End signed statement

<hr>

#### Notes

With keybase you can sign any directory's contents, whether it's a git repo,
source code distribution, or a personal documents folder. It aims to replace the drudgery of:

  1. comparing a zipped file to a detached statement
  2. downloading a public key
  3. confirming it is in fact the author's by reviewing public statements they've made, using it

All in one simple command:

```bash
keybase dir verify
```

There are lots of options, including assertions for automating your checks.

For more info, check out https://keybase.io/docs/command_line/code_signing