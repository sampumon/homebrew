Homebrew / yle-dl
=================

This is a placeholder for [yle-dl] Homebrew formula.

You could also go to [Homebrew homepage][home].

Install yle-dl via Homebrew
---------------------------

`brew install https://raw.github.com/sampula/homebrew/master/Library/Formula/yle-dl.rb`

TODO: check dependencies.

Pushing yle-dl upsteam
----------------------

Old version of yle-dl is available from [homebrew-alt]. See [pull request][matti-pull].

Possible reasons why yle-dl might not get included in Homebrew upstream include:

1. It includes a modified version of [RTMPDump]. Homebrew does not like dupes. If the modified plugin support finds its way to RTMPDump upstream, this is no more a problem.

2. It's somewhat suspicious. Using yle-dl is technically forbidden in [Areena T&C][käyttöehdot]. But that doesn't seem to be any problem in Homebrew domain, so I'm just reporting it here for completeness.

Who Are You?
------------
I'm [Sampumon] and I do UNIX pipes.


[sampumon]:http://github.com/sampumon
[home]:http://mxcl.github.com/homebrew
[yle-dl]:http://users.tkk.fi/~aajanki/rtmpdump-yle/
[matti-pull]:http://github.com/mxcl/homebrew/pull/9418
[homebrew-alt]:http://github.com/adamv/homebrew-alt
[rtmpdump]:http://github.com/mxcl/homebrew/blob/master/Library/Formula/rtmpdump.rb
[käyttöehdot]:http://yle.fi/yleisradio/node/1385/kayttoehdot
