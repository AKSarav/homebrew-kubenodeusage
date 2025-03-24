class Kubenodeusage < Formula
    desc "KubeNodeUsage is a command line utility to get the usage of the nodes and pods in a Kubernetes cluster graphically."
    homepage "https://github.com/AKSarav/KubeNodeUsage"
    version "3.0.4"
    license "MIT"

    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/AKSarav/KubeNodeUsage/releases/download/v3.0.4/KubeNodeUsage-linux-amd64-v3.0.4.zip"
      sha256 "9e3b94c342c4365e7aa4aa9825c4cbfccf7b8770d9addc55493346219bb5e9d1"
    elsif OS.linux? && Hardware::CPU.arm?
      url "https://github.com/AKSarav/KubeNodeUsage/releases/download/v3.0.4/KubeNodeUsage-linux-arm64-v3.0.4.zip"
      sha256 "4b9806c904e0a9142193bba9e55da6afe2980cbe3ae1ee9968669a109c0f4141"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://github.com/AKSarav/KubeNodeUsage/releases/download/v3.0.4/KubeNodeUsage-darwin-amd64-v3.0.4.zip"
      sha256 "5b080c8ed3eaa072a46fe07207d380b38df8f1d792496ba7889318cab29daf96"
    elsif OS.mac? && Hardware::CPU.arm?
      url "https://github.com/AKSarav/KubeNodeUsage/releases/download/v3.0.4/KubeNodeUsage-darwin-arm64-v3.0.4.zip"
      sha256 "f3294e462d2d01697f1d8d39c53382fa617b96c06182b4943d685385ff3ac441"
    elsif OS.windows? && Hardware::CPU.intel?
      url "https://github.com/AKSarav/KubeNodeUsage/releases/download/v3.0.4/KubeNodeUsage-windows-amd64-v3.0.4.exe.zip"
      sha256 "d63588d52ff8dbb84c0a8e2006a4c31d6ac9cc5a4494489fa41357ba317d6164"
    elsif OS.windows? && Hardware::CPU.arm?
      url "https://github.com/AKSarav/KubeNodeUsage/releases/download/v3.0.4/KubeNodeUsage-windows-arm64-v3.0.4.exe.zip"
      sha256 "86f023eaaa4c08f58ff3cc1e61604cc6a6c4571ac1eaea1ca1282f14cbd6ea12"
    end

    def install
    if OS.mac? && Hardware::CPU.intel?
      bin.install "KubeNodeUsage-darwin-amd64-v#{version}" => "KubeNodeUsage"
    elsif OS.mac? && Hardware::CPU.arm?
      bin.install "KubeNodeUsage-darwin-arm64-v#{version}" => "KubeNodeUsage"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "KubeNodeUsage-linux-amd64-v#{version}" => "KubeNodeUsage"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "KubeNodeUsage-linux-arm64-v#{version}" => "KubeNodeUsage"
    end
  end

  test do
    system "#{bin}/KubeNodeUsage", "--version"
  end
end
