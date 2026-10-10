#!/bin/sh

# Dock
defaults write com.apple.dock orientation -string left
defaults write com.apple.dock tilesize -float 28
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -float 60
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock launchanim -bool false

# Hot corners: Quick Note in the bottom-left corner
defaults write com.apple.dock wvous-bl-corner -int 14

# Finder
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder FXPreferredViewStyle -string Nlsv
defaults write com.apple.finder FXDefaultSearchScope -string SCcf
defaults write com.apple.finder NewWindowTarget -string PfLo
defaults write com.apple.finder NewWindowTargetPath -string "file://$HOME/Downloads/"
defaults write com.apple.finder _FXSortFoldersFirst -bool true
defaults write com.apple.finder _FXSortFoldersFirstOnDesktop -bool true

# Trackpad
for domain in com.apple.AppleMultitouchTrackpad com.apple.driver.AppleBluetoothMultitouch.trackpad; do
  defaults write "$domain" Clicking -bool true
  defaults write "$domain" TrackpadThreeFingerDrag -bool true
done
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 0
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -int 0

# Pointer speed
defaults write -g com.apple.trackpad.scaling -float 1.5

# Menu bar clock
defaults write com.apple.menuextra.clock IsAnalog -bool true

killall Dock
killall Finder
killall SystemUIServer
