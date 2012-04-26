require 'formula'

class YleDl < Formula
  # TODO: use git repository and depend on rtmpdump. would it work?
  homepage 'http://users.tkk.fi/~aajanki/rtmpdump-yle/'
  url 'http://users.tkk.fi/~aajanki/rtmpdump-yle/yle-dl-1.99.6.tar.gz'
  md5 '7ea166d5888c4af61ae5adffeda9dea4'

  # TODO: check dependencies

  def install
    system "make SYS=darwin"
    system "mkdir -p #{lib}" # hack for rtmpdump/librtmp/Makefile#120
    system "make install SYS=darwin prefix=#{prefix} mandir=#{man}"
  end

  def test
    # TODO: remove downloaded video
    ohai "Getting the latest news for you."
    system "yle-dl --latestepisode --resume -o uutiset.flv http://areena-beta.yle.fi/ng/areena?q=uutiset"

    unless File.exists?("uutiset.flv")
      onoe "yle-dl failed :("
    else
      ohai "ALL'S GOOD! Check uutiset.flv for latest news."
    end
  end

  def caveats; <<-EOS.undent
    We're going to install a modified version of rtmpdump.
    If you already installed rtmpdump via brew, this probably fails.
    EOS
  end
end
