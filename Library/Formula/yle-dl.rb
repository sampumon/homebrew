require 'formula'

class PyCrypto < Requirement
  def message; <<-EOS.undent
      Detected unsatisfied Python dependency. Install with:
        easy_install pycrypto
    EOS
  end
  def satisfied?
    quiet_system "/usr/bin/env python -c 'from Crypto.Cipher import AES'"
  end
end

class YleDl < Formula
  # TODO: head at github
  homepage 'http://users.tkk.fi/~aajanki/rtmpdump-yle/'
  url 'http://users.tkk.fi/~aajanki/rtmpdump-yle/yle-dl-2.0.0.tar.gz'
  md5 '08d84d654100da2da7c1a72dacc652b4'

  head 'git://github.com/aajanki/yle-dl.git'

  # TODO: depends on json?
  depends_on 'rtmpdump'
  depends_on PyCrypto.new
  # this dependancy check fails: depends_on 'pycrypto' => :python

  def install
    # TODO: why is this not automatic?
    # system "easy_install pycrypto"
    system "make install SYS=darwin prefix=#{prefix} mandir=#{man}"
  end

  def test
    # TODO: remove downloaded video?
    ohai "Getting the latest news for you."
    system "yle-dl --latestepisode --resume -o uutiset.flv http://areena-beta.yle.fi/ng/areena?q=uutiset"

    unless File.exists?("uutiset.flv")
      onoe "yle-dl failed :("
    else
      ohai "ALL'S GOOD! Check uutiset.flv for latest news."
    end
  end

  def caveats; <<-EOS.undent
      Requires PyCrypto Python library. https://www.dlitz.net/software/pycrypto/
      Can be installed with:
        easy_install pycrypto
    EOS
  end
end
