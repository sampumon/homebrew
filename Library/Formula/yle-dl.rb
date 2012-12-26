require 'formula'

class YleDl < Formula
  homepage 'http://aajanki.github.com/yle-dl/'
  url 'https://github.com/downloads/aajanki/yle-dl/yle-dl-2.0.2.tar.gz'
  md5 '56775e319365ccb976f85c2d6896ff9e'

  head 'git://github.com/aajanki/yle-dl.git'

  # TODO: we need RTMPdump 2.4+
  depends_on 'rtmpdump'
  depends_on LanguageModuleDependency.new :python, 'pycrypto', 'Crypto'

  def install
    system "make install SYS=darwin prefix=#{prefix} mandir=#{man}"
  end

  def test
    news = "/var/tmp/uutiset.flv"
    ohai "Getting the latest news for you."
    system "yle-dl --latestepisode --resume -o #{news} http://areena.yle.fi/?q=uutiset"

    unless File.exists?(news)
      onoe "yle-dl failed :("
    else
      ohai "ALL'S GOOD! Check #{news} for latest news."
    end
  end

  def caveats; <<-EOS.undent
      Requires PyCrypto Python library and RTMPdump 2.4+ (currently homebrew has 2.3).
      Can be installed with:
        easy_install pycrypto
        brew install --HEAD rtmpdump
    EOS
  end
end
