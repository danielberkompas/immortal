##### Signed by https://keybase.io/dberkom
```
-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAABCgAGBQJVMBKFAAoJEKU82t1CbYQMmdoP/1b7zzAnRt5kvYOl4iQvLkm2
HLxWCVxkAZbVJ0bOUQAPExi3DdbYBC1IbKVv+ixc+pMv/JDxrQ0AMQ85tnAhFyfT
A6zilBMhfa3dKsZ9UGHa5IY6BhHs8o426w1xQMrVFlaXsLXPdC5fgFynRAwCGgoF
x+oGVQjbeJk0LUEoo/zw5qPZmgjeAg6azhDVGwJKhh9Im50zOYKU5pZM9pxdb2wl
f2gR5h0o2dK6vkd/epifj2MZFS9rRGqX/c8AMD22+CXVbR890DESHwRZ1ytGp0+m
5nUSzXy39xTh+8XYKfkYg+S2+Ob//jR5KHnwZ/u4LUhdKfSNZr34aKHDpMCoi2Sv
pDGIu8x6/8LWzjArY6lwf+tjU2Phm5Gdp+0brXzccvgSeAPzBn9zBZdauphc00Ze
9Px6KeYXN2j/BHlPQHClJHiEeTJ9tPjTCVfru8fP8VApcfWJmnFzFvowv66Uzbk/
hwGxuRHC2WgWn7kzezKIgEJ3qyHhmYRlsHNciisuiWMQIqXJ+dCza/zQdLIfOAZC
SVvGCSOsMKjKqkihzHTpPxJ7YSQOYHnVfamqQKm6oRxN5ko4o64VT5vhQ3Od4RDf
7D8rYR6QShhoCv0Qw+NUwZirywK20P7+b31xjtz+BMZ1rR1hNbQpwhtn0JGbjaVx
guPif9u+jxjkbZ1cOpVb
=zr9G
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size  exec  file                              contents                                                        
            ./                                                                                                
34            .gitignore                      e78d9bbfe2af0501e32d75b6733c6649c36e0cc29b4366d2028388a053317cf4
624           .travis.yml                     059cc9749f5eae5b5eeafe16049f34b6e6977803610ebcffd70bcd4c106d8ccb
153           CHANGELOG.md                    42e628018fccb4a446a68c506c2e9437df5eb0ab0071c89cf4248f2dc3a398d6
436           CONTRIBUTING.md                 d23dece801790afb23510cdb0c9bec59ce1684349a517b1d2236eb136dee3b04
1083          LICENSE                         a24b375a609f6c84e82c1458fbb0383678e3f492ffb83912731fa5313831a7c9
698           README.md                       5c752caddaa915fa3c1b5be4608b0d5fe5a880c522413d7a2e51c234c96e5c1f
              config/                                                                                         
1030            config.exs                    2d43b2f33a68081b675f8cedca5e74e5bdece4cd74258308326347b55ba85231
              lib/                                                                                            
                immortal/                                                                                     
3499              ets_table_manager.ex        06da3d2475cfa37bb59b00864f41fc4f7982a592b18206bc5c6ed578b81e7ce8
391             immortal.ex                   fae89bd37cd3100de85b66a5dd048daf1d54f8546ea83c025a3cdd471be4a89a
1370          mix.exs                         95ca472ccd8523c8919c5f302753cd3d3ad4537e0d541370d2d8c7d08893d994
78            mix.lock                        71da16b19bbb8817a2f9d2620bf28757014270249ced83b0f043f919922791f6
              script/                                                                                         
621   x         release                       ac5c0088bca2a25568fa5bb438ea19666c01b053cdb4d116676ba85c20ab3bf5
              test/                                                                                           
                immortal/                                                                                     
1803              ets_table_manager_test.exs  fb1df4c4a569997bba7bb419ad8790a5640d4ac442fec84df5274202e7124664
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