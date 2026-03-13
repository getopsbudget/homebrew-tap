# typed: false
# frozen_string_literal: true

class Opsbudget < Formula
  desc "CLI for OpsBudget uptime monitoring"
  homepage "https://opsbudget.com"
  version "0.1.0" # TODO: Update this to match the latest release tag
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getopsbudget/opsbudget-cli/releases/latest/download/opsbudget_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # TODO: Update sha256 after release artifacts are published
    end

    on_intel do
      url "https://github.com/getopsbudget/opsbudget-cli/releases/latest/download/opsbudget_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # TODO: Update sha256 after release artifacts are published
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getopsbudget/opsbudget-cli/releases/latest/download/opsbudget_linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # TODO: Update sha256 after release artifacts are published
    end

    on_intel do
      url "https://github.com/getopsbudget/opsbudget-cli/releases/latest/download/opsbudget_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # TODO: Update sha256 after release artifacts are published
    end
  end

  def install
    bin.install "opsbudget"
  end

  test do
    assert_match "opsbudget", shell_output("#{bin}/opsbudget --version")
  end
end
