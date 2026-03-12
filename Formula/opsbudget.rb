# typed: false
# frozen_string_literal: true

# This formula is auto-updated by GoReleaser on each CLI release.
# Manual edits will be overwritten.
class Opsbudget < Formula
  desc "CLI for Ping by OpsBudget — uptime monitoring"
  homepage "https://opsbudget.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getopsbudget/opsbudget-cli/releases/download/v#{version}/opsbudget_#{version}_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/getopsbudget/opsbudget-cli/releases/download/v#{version}/opsbudget_#{version}_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getopsbudget/opsbudget-cli/releases/download/v#{version}/opsbudget_#{version}_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/getopsbudget/opsbudget-cli/releases/download/v#{version}/opsbudget_#{version}_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "opsbudget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opsbudget --version")
  end
end
