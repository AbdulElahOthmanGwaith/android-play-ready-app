#!/bin/bash

# 🚀 Quick GitHub Setup Script for Android App
# This script helps you set up your Android project for GitHub

echo "🚀 Setting up your Android project for GitHub..."

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Initialize git repository if not already initialized
if [ ! -d ".git" ]; then
    echo "📁 Initializing Git repository..."
    git init
else
    echo "✅ Git repository already exists."
fi

# Add all files
echo "📋 Adding all files to Git..."
git add .

# Create initial commit
echo "💾 Creating initial commit..."
git commit -m "🎉 Initial commit: Android app ready for Google Play Store

✨ Features:
- Material Design 3 with Jetpack Compose
- Target SDK 35 (Android 15)
- Google Play Store compliant
- RTL language support
- Dark mode support
- Privacy policy included

🛠️ Tech Stack:
- Kotlin + Jetpack Compose
- Material Design 3
- Android App Bundle ready
- Gradle with Kotlin DSL"

echo ""
echo "✅ Git setup complete!"
echo ""
echo "🔗 Next steps to publish on GitHub:"
echo "1. Create a new repository on GitHub.com"
echo "2. Copy the repository URL"
echo "3. Run these commands:"
echo ""
echo "   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "🎉 Your Android app will be live on GitHub!"
echo ""
echo "📱 Don't forget to:"
echo "- Update the README with your project details"
echo "- Replace [Your Name] in the LICENSE file"
echo "- Customize the app package name and branding"
echo ""
echo "🚀 Happy coding!"