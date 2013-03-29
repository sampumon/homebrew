Homebrew / yle-dl
=================

This is a placeholder for [yle-dl] Homebrew formula.

For your other brewing needs, go to [Homebrew homepage][home].

Install yle-dl via Homebrew
---------------------------

	brew install yle-dl

If you get `no available formula for yle-dl`:

	brew update

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


[home]:http://brew.sh
[sampumon]:http://github.com/sampumon
[yle-dl]:http://aajanki.github.com/yle-dl
[RTMPdump]:http://rtmpdump.mplayerhq.hu
[PyCrypto]:https://www.dlitz.net/software/pycrypto/
