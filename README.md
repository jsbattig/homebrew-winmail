# py-winmail-opener Homebrew Tap

This repository is a Homebrew tap for [py-winmail-opener](https://github.com/jsbattig/py-winmail-opener), a tool for extracting attachments and email body from Winmail.dat files.

## Overview

This directory is managed as a Git submodule of the main py-winmail-opener repository to enable coordinated development and releases. When changes are made to the main application, corresponding changes to the Homebrew formula can be made and tracked together.

## Working with this Submodule

### For Users

If you're just using py-winmail-opener, you can install it with:

```bash
brew install jsbattig/winmail/py-winmail-opener
```

### For Developers

If you're contributing to py-winmail-opener and need to update the formula:

1. **Clone the repository with submodules**:
   ```bash
   git clone --recurse-submodules https://github.com/jsbattig/py-winmail-opener.git
   ```

2. **If you already cloned without submodules**:
   ```bash
   git submodule update --init --recursive
   ```

3. **Always pull changes first**:
   ```bash
   # Update main repository
   git pull
   
   # Update submodule to latest
   git submodule update --remote homebrew
   ```

4. **Making coordinated changes**:
   ```bash
   # 1. Navigate to submodule directory
   cd homebrew
   
   # 2. Make changes to formula
   # (edit py-winmail-opener.rb)
   
   # 3. Commit changes in submodule
   git add py-winmail-opener.rb
   git commit -m "Update formula for version X.Y.Z"
   git push
   
   # 4. Return to main repository and commit submodule update
   cd ..
   git add homebrew
   git commit -m "Update Homebrew formula submodule reference"
   git push
   ```

## Formula Structure

The py-winmail-opener formula:

1. Installs Python files to `libexec` to avoid conflicts
2. Creates scripts in `libexec/bin` with proper symlinks to system `bin`
3. Uses `skip_clean :all` to prevent binary validation errors
4. Creates an AppleScript application for handling .dat files

## Troubleshooting

If you encounter issues with the formula:

1. Make sure both repositories are up to date
2. Check that formula version matches the application version
3. Verify that the SHA256 is correct for the tagged version

For more details, see the [main project documentation](https://github.com/jsbattig/py-winmail-opener).
