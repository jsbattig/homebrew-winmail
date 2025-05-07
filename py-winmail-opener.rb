class PyWinmailOpener < Formula
  desc "Extract attachments and email body from Winmail.dat files"
  homepage "https://github.com/jsbattig/py-winmail-opener"
  url "https://github.com/jsbattig/py-winmail-opener/archive/refs/tags/refs/heads/master.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"

  depends_on "python@3.10"
  depends_on "duti" => :recommended

  def install
    # Install Python files to libexec to avoid conflicts
    libexec.install Dir["*"]

    # Create bin directory if it doesn't exist
    bin.mkpath

    # Create a wrapper script in bin
    (bin/"winmail-opener").write <<~EOS
      #!/bin/bash
      "/usr/local/bin/python3.10" "#{libexec}/winmail_opener.py" "$@"
    EOS

    # Make the wrapper executable
    chmod 0755, bin/"winmail-opener"
  end

  def post_install
    # Try to run the installer automatically with homebrew mode
    system "#{Formula["python@3.10"].opt_bin}/python3.10", "#{libexec}/install.py", "--homebrew-mode"
    
    if $?.success?
      puts "WinmailOpener.app was successfully created and installed!"
      puts "You can now open .dat files with WinmailOpener."
    else
      puts "Automatic app creation failed. This might be due to permission restrictions."
      puts "To create the app manually, run the following command:"
      puts "  #{Formula["python@3.10"].opt_bin}/python3.10 #{libexec}/install.py"
    end
  end

  test do
    # Test the version output
    assert_match "winmail_opener refs/heads/master")
  end
end
