class KubeNodeUsage < Formula
    desc "KubeNodeUsage is a command line utility to get the usage of the nodes and pods in a Kubernetes cluster graphically."
    homepage "https://github.com/AKSarav/KubeNodeUsage"
    version "3.0.3"
    license "MIT"

      url "https://github.com/AKSarav/KubeNodeUsage/releases/download/v3.0.3/KubeNodeUsage-windows-amd64-v3.0.3.exe.zip"
      sha256 "96706a98d49d7d563d8fa8186878d3952fead069127e89929c17e9a701ededaf"
    elsif OS.windows? && Hardware::CPU.arm?
      url "https://github.com/AKSarav/KubeNodeUsage/releases/download/v3.0.3/KubeNodeUsage-darwin-amd64-v3.0.3.zip"
      sha256 "3c5c4cef46e176d87557464630f5693484ef9eeb0c101e9c3f4ac3d1c6e18070"
    elsif OS.mac? && Hardware::CPU.arm?
      url "https://github.com/AKSarav/KubeNodeUsage/releases/download/v3.0.3/KubeNodeUsage-darwin-arm64-v3.0.3.zip"
      sha256 "c537292dbf851a3f08e53c45b192f100649e95b6ec852f03dabd071cb6d84f26"
    elsif OS.windows? && Hardware::CPU.intel?
      url "https://github.com/AKSarav/KubeNodeUsage/releases/download/v3.0.3/KubeNodeUsage-windows-arm64-v3.0.3.exe.zip"
      sha256 "14b4b77dc29be7d569a4791290dfe3a994206c7de610827016595a8d03681ad7"
    end
      url "https://github.com/AKSarav/KubeNodeUsage/releases/download/v3.0.3/KubeNodeUsage-linux-arm64-v3.0.3.zip"
      sha256 "d61a23dd8f583e3009af938f7d4f85223c4994816968f65c6caaf658aec61281"
    elsif OS.mac? && Hardware::CPU.intel?
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/AKSarav/KubeNodeUsage/releases/download/v3.0.3/KubeNodeUsage-linux-amd64-v3.0.3.zip"
      sha256 "3cd0c21ed5c4c2d6863504f78d8c3ed182400759c82c702df25f6042cc10adbb"
    elsif OS.linux? && Hardware::CPU.arm?

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
