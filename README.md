Homebrew / yle-dl
=================

This is a placeholder for [yle-dl] Homebrew formula.

For your other brewing needs, go to [Homebrew homepage][home].

Install yle-dl via Homebrew
---------------------------

	brew install https://raw.github.com/sampumon/homebrew/master/Library/Formula/yle-dl.rb

### Caveats

Requires [PyCrypto] Python library and [RTMPdump] 2.4+.

Latest Homebrew has RTMPdump 2.4. If you have 2.3:

	brew update && brew upgrade rtmpdump

PyCrypto can be installed with:

	pip install pycrypto

If you're missing pip:

	easy_install pip

Who Are You?
------------
I'm [Sampumon] and I do UNIX pipes.


[sampumon]:http://github.com/sampumon
[home]:http://mxcl.github.com/homebrew
[yle-dl]:http://aajanki.github.com/yle-dl
[RTMPdump]:http://rtmpdump.mplayerhq.hu
[PyCrypto]:https://www.dlitz.net/software/pycrypto/
