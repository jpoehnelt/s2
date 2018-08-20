class S2geometry < Formula
  desc ""
  homepage ""

  url "https://github.com/google/s2geometry/archive/9398b7c8d55c15c4ad7cdc645c482232ea7c087a.tar.gz"
  sha256 "5781d36fc8c74043ee76e1a1ef25e553e428fc517005dc3a43e3f6f62bf2d7d0"
  version "0.0"

  depends_on "cmake" => :build
  depends_on "gflags"
  depends_on "glog"
  depends_on "openssl"
  depends_on "swig"
  depends_on "https://gist.githubusercontent.com/Kronuz/96ac10fbd8472eb1e7566d740c4034f8/raw/gtest.rb"
   
  def install
    system "cmake", "."
    system "cmake", ".", "-DWITH_GFLAGS=ON", "-WITH_GTEST=ON", *std_cmake_args
    system "make", "install" 
    system ""
  end

end
 