#!/bin/bash

echo "removing evaluation key..."
rm  -rf ~/Library/Preferences/IntelliJIdea*/eval

echo "removing all evlsprt properties in options.xml..."
sed -i  '' '/evlsprt/d' ~/Library/Preferences/IntelliJIdea*/options/other.xml

echo "removing java.util.prefs.plist..."
rm ~/Library/Preferences/com.jetbrains.intellij.plist

echo "That's it, enjoy ;)"