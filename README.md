# Homebrew Tap for Winmail.dat Opener

This repository contains the Homebrew formula for [py-winmail-opener](https://github.com/jsbattig/py-winmail-opener), a utility to extract attachments and email body from Winmail.dat files on macOS.

## Installation

```bash
# Add this tap to your Homebrew
brew tap jsbattig/winmail

# Install py-winmail-opener
brew install py-winmail-opener
```

## Features

* Automatically extracts attachments to `~/Downloads`
* Opens email body with TextEdit.app
* Uses a simple, security-friendly AppleScript approach for file associations
* No antivirus warnings

## Usage

Once installed, you can use the command-line interface:

```bash
winmail-opener path/to/winmail.dat
```

Or simply double-click any winmail.dat file (after setting the file association).

## Updating

To update to the latest version:

```bash
brew update
brew upgrade py-winmail-opener
```

## Uninstallation

To uninstall:

```bash
brew uninstall py-winmail-opener
brew untap jsbattig/winmail
