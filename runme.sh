#!/bin/bash

for product in IntelliJIdea WebStorm DataGrip; do
  echo "Resetting trial period for $product"

  echo "removing evaluation key..."
  rm  -rf ~/Library/Preferences/$product*/eval

  echo "removing all evlsprt properties in options.xml..."
  sed -i  '' '/evlsprt/d' ~/Library/Preferences/$product*/options/other.xml
  
  echo
done

echo "removing additional plist files..."
rm -f ~/Library/Preferences/com.apple.java.util.prefs.plist
rm -f ~/Library/Preferences/com.jetbrains.*.plist
rm -f ~/Library/Preferences/jetbrains.*.*.plist

echo
echo "That's it, enjoy ;)"
