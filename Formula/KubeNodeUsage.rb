class Kubenodeusage < Formula
  desc "KubeNodeUsage is a command line utility to get the usage of the nodes and pods in a Kubernetes cluster graphically."
  homepage "https://github.com/AKSarav/KubeNodeUsage"
  version "3.0.3"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/AKSarav/KubeNodeUsage/releases/download/v3.0.3/KubeNodeUsage-linux-amd64-v3.0.3.zip"
    sha256 "f2001c94d589271f3e4a05aa6f1a3dfec63248be6b50b5912b7bac4413c455d1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/AKSarav/KubeNodeUsage/releases/download/v3.0.3/KubeNodeUsage-linux-arm64-v3.0.3.zip"
    sha256 "011c3ca044f4b53b9fe1b359be403b99a19a3610221ed828c4605f7ec04792ba"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/AKSarav/KubeNodeUsage/releases/download/v3.0.3/KubeNodeUsage-darwin-amd64-v3.0.3.zip"
    sha256 "0de21244b11b0c10893ce8c8fff8c870bf4567b8e4c9677ce4bcd2a098757384"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/AKSarav/KubeNodeUsage/releases/download/v3.0.3/KubeNodeUsage-darwin-arm64-v3.0.3.zip"
    sha256 "3c968d0d374e28946cc5672318678a57cffdcc81f8e2642c3c2dca5d4f68ef85"
  elsif OS.windows? && Hardware::CPU.intel?
    url "https://github.com/AKSarav/KubeNodeUsage/releases/download/v3.0.3/KubeNodeUsage-windows-amd64-v3.0.3.exe.zip"
    sha256 "8377c02c58baa74f5fef5834755bd16252d7d656cb520760c4a764153db24b91"
  elsif OS.windows? && Hardware::CPU.arm?
    url "https://github.com/AKSarav/KubeNodeUsage/releases/download/v3.0.3/KubeNodeUsage-windows-arm64-v3.0.3.exe.zip"
    sha256 "a2338d28ebaa3a62f2fbd320cd21b1e43573df412669cba27677b85818edbb08"
  end

  def install
    platform = if OS.mac?
                  "darwin"
                elsif OS.linux?
                  "linux"
                elsif OS.windows?
                  "windows"
                end

    arch = if Hardware::CPU.intel?
              "amd64"
            elsif Hardware::CPU.arm?
              "arm64"
            end

    bin.install "KubeNodeUsage-\#{platform}-\#{arch}" => "KubeNodeUsage"
  end
end
