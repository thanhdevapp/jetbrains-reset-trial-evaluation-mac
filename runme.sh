#!/bin/bash

echo "removing evaluation key..."
rm  -rf ~/Library/Preferences/IntelliJIdea*/eval

echo "removing all evlsprt properties in options.xml..."
sed -i  '' '/evlsprt/d' ~/Library/Preferences/IntelliJIdea*/options/other.xml

echo "removing some plist files..."
rm ~/Library/Preferences/com.jetbrains.intellij.plist
rm ~/Library/Preferences/jetbrains.idea.*.plist

echo "That's it, enjoy ;)"
