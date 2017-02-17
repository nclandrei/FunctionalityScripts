#!/bin/bash

echo "Removing firefox lock"
rm ~/.mozilla/firefox/*.ini

echo "Removing chrome lock"
rm ~/.config/google-chrome/Singleton
