# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# Keep application class
-keep public class * extends android.app.Application

# Keep activity classes
-keep public class * extends android.app.Activity

# Keep fragment classes
-keep public class * extends androidx.fragment.app.Fragment

# Keep service classes
-keep public class * extends android.app.Service

# Keep broadcast receiver classes
-keep public class * extends android.content.BroadcastReceiver

# Keep content provider classes
-keep public class * extends android.content.ContentProvider

# Keep native method classes
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep enum classes
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# Keep Parcelable classes
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

# Compose specific rules
-keep class androidx.compose.** { *; }
-keep class kotlin.Metadata { *; }

# Remove logs in release
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
    public static *** i(...);
}