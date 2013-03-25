require 'formula'

class YleDl < Formula
  homepage 'http://aajanki.github.com/yle-dl/'
  url 'https://github.com/downloads/aajanki/yle-dl/yle-dl-2.0.2.tar.gz'
  sha1 'c48866daf24e9f427184c8bc51a018d250a003cf'

  head 'https://github.com/aajanki/yle-dl.git'

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
      Requires PyCrypto Python library.
      Can be installed with:
        pip install pycrypto
    EOS
  end
end
