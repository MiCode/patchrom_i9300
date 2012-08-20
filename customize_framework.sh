#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out

SEP_FRAME="framework2.jar.out"

if [ $2 = "$BUILD_OUT/framework" ]
then
    # move all files from framework.jar.out those exist in framework2.jar
    for file2 in `find framework2.jar.out -name *.smali`; do
            file=${file2/framework2.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done

    # move some smali to create a separate $SEP_FRAME.jar
    # including: smali/miui smali/com/samsung smali/android/widget
	mkdir -p "$BUILD_OUT/$SEP_FRAME/smali"
	# touch "$BUILD_OUT/$SEP_FRAME/apktool.yml"
	# echo "version: 1.4.3" >> "$BUILD_OUT/$SEP_FRAME/apktool.yml"
	# echo "apkFileName: $SEP_FRAME.jar" >> "$BUILD_OUT/$SEP_FRAME/apktool.yml"
    rm -rf $BUILD_OUT/$SEP_FRAME/smali/miui $BUILD_OUT/$SEP_FRAME/smali/com/samsung $BUILD_OUT/$SEP_FRAME/smali/android/widget
	mv "$BUILD_OUT/framework/smali/miui" "$BUILD_OUT/$SEP_FRAME/smali"
	mkdir -p "$BUILD_OUT/$SEP_FRAME/smali/com/"
	mv "$BUILD_OUT/framework/smali/com/samsung" "$BUILD_OUT/$SEP_FRAME/smali/com/"
	mkdir -p "$BUILD_OUT/$SEP_FRAME/smali/android"
    mv "$BUILD_OUT/framework/smali/android/widget" "$BUILD_OUT/$SEP_FRAME/smali/android/"

	#mkdir -p "$BUILD_OUT/$SEP_FRAME/smali/com/android"
    #mv "$BUILD_OUT/framework/smali/com/android/internal" "$BUILD_OUT/$SEP_FRAME/smali/com/android/"

    #mv "$BUILD_OUT/framework/smali/android/content" "$BUILD_OUT/$SEP_FRAME/smali/android/"
    #mv "$BUILD_OUT/framework/smali/android/app" "$BUILD_OUT/$SEP_FRAME/smali/android/"

	#mkdir -p "$BUILD_OUT/$SEP_FRAME/smali/android/app"
    #mv $BUILD_OUT/framework/smali/android/app/Activity.smali $BUILD_OUT/$SEP_FRAME/smali/android/app
    #mv $BUILD_OUT/framework/smali/android/app/ActivityThread.smali $BUILD_OUT/$SEP_FRAME/smali/android/app
    #mv $BUILD_OUT/framework/smali/android/app/ApplicationPackageManager.smali $BUILD_OUT/$SEP_FRAME/smali/android/app
    #mv $BUILD_OUT/framework/smali/android/app/ContextImpl.smali $BUILD_OUT/$SEP_FRAME/smali/android/app
    #mv $BUILD_OUT/framework/smali/android/app/DownloadManager.smali $BUILD_OUT/$SEP_FRAME/smali/android/app
    #mv $BUILD_OUT/framework/smali/android/app/LoadedApk.smali $BUILD_OUT/$SEP_FRAME/smali/android/app

	#$APKTOOL b "$BUILD_OUT/$SEP_FRAME" "$BUILD_OUT/$SEP_FRAME.jar"
	#mkdir -p "$BUILD_OUT/ZIP/system/framework"
	#cp "$BUILD_OUT/$SEP_FRAME.jar" "$BUILD_OUT/ZIP/system/framework/$SEP_FRAME.jar"
fi
