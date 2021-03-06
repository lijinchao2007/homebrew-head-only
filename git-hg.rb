class HgInstalled < Requirement
  satisfy { which "hg" }

  def message; <<-EOS.undent
    Mercurial is required to use this software.

    You can install this with Homebrew using:
      brew install mercurial

    Or you can use an official installer from:
      http://mercurial.selenic.com/
    EOS
  end
end

class GitHg < Formula
  head "https://github.com/cosmin/git-hg.git"
  homepage "http://offbytwo.com/git-hg/"

  depends_on HgInstalled

  def install
    prefix.install Dir["*"]
  end
end
