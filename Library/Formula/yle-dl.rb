require 'formula'

class YleDl < Formula
  homepage 'http://aajanki.github.com/yle-dl/'
  url 'https://github.com/downloads/aajanki/yle-dl/yle-dl-2.0.2.tar.gz'
  sha1 '35f560936c8e45086802474f1ee3a3b2a5747b3a'

  head 'https://github.com/sampumon/homebrew.git'

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
