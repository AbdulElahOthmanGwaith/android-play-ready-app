#!/usr/bin/env bash

# سكريبت بناء التطبيق للنشر على جوجل بلاي
# Build script for Google Play Store release

set -e  # إيقاف السكريبت عند حدوث خطأ

echo "🚀 بدء عملية بناء التطبيق للنشر..."
echo "Starting app build for release..."

# التحقق من وجود ملف keystore.properties
if [ ! -f "keystore.properties" ]; then
    echo "❌ خطأ: ملف keystore.properties غير موجود!"
    echo "❌ Error: keystore.properties file not found!"
    echo "انسخ ملف keystore.properties.sample وقم بتعديله"
    echo "Copy keystore.properties.sample and modify it"
    exit 1
fi

# تنظيف المشروع
echo "🧹 تنظيف المشروع..."
echo "🧹 Cleaning project..."
./gradlew clean

# تشغيل الاختبارات
echo "🧪 تشغيل الاختبارات..."
echo "🧪 Running tests..."
./gradlew test

# فحص الكود بـ Lint
echo "🔍 فحص الكود..."
echo "🔍 Running lint checks..."
./gradlew lint

# بناء App Bundle
echo "📦 بناء App Bundle..."
echo "📦 Building App Bundle..."
./gradlew bundleRelease

# التحقق من وجود الملف المُنتج
APK_PATH="app/build/outputs/bundle/release/app-release.aab"
if [ -f "$APK_PATH" ]; then
    echo "✅ تم بناء التطبيق بنجاح!"
    echo "✅ App built successfully!"
    echo "📁 مسار الملف: $APK_PATH"
    echo "📁 File location: $APK_PATH"
    
    # عرض حجم الملف
    FILE_SIZE=$(du -h "$APK_PATH" | cut -f1)
    echo "📊 حجم الملف: $FILE_SIZE"
    echo "📊 File size: $FILE_SIZE"
else
    echo "❌ فشل في بناء التطبيق!"
    echo "❌ Failed to build app!"
    exit 1
fi

echo "🎉 جاهز للرفع على جوجل بلاي!"
echo "🎉 Ready for Google Play Store upload!"

echo ""
echo "الخطوات التالية:"
echo "Next steps:"
echo "1. ارفع ملف .aab إلى Google Play Console"
echo "1. Upload .aab file to Google Play Console"
echo "2. املأ معلومات التطبيق والأصول"
echo "2. Fill in app information and assets"
echo "3. ارسل للمراجعة والنشر"
echo "3. Submit for review and publish"