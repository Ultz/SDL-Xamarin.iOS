#!/bin/sh
rmdir -p allbuild
mkdir allbuild
xcodebuild -project SDL.xcodeproj -target libSDL-iOS -sdk iphonesimulator -arch i386 -configuration Release clean build
cp build/Release-iphonesimulator/libSDL2.a allbuild/libSDL2.i386.a
xcodebuild -project SDL.xcodeproj -target libSDL-iOS -sdk iphonesimulator -arch x86_64 -configuration Release clean build
cp build/Release-iphonesimulator/libSDL2.a allbuild/libSDL2.x86_64.a
xcodebuild -project SDL.xcodeproj -target libSDL-iOS -sdk iphoneos -arch arm64 -configuration Release clean build
cp build/Release-iphoneos/libSDL2.a allbuild/libSDL2.arm64.a
xcodebuild -project SDL.xcodeproj -target libSDL-iOS -sdk iphoneos -arch arm64e -configuration Release clean build
cp build/Release-iphoneos/libSDL2.a allbuild/libSDL2.arm64e.a
xcodebuild -project SDL.xcodeproj -target libSDL-iOS -sdk iphoneos -arch armv7 -configuration Release clean build
cp build/Release-iphoneos/libSDL2.a allbuild/libSDL2.armv7.a
xcodebuild -project SDL.xcodeproj -target libSDL-iOS -sdk iphoneos -arch armv7s -configuration Release clean build
cp build/Release-iphoneos/libSDL2.a allbuild/libSDL2.armv7s.a
lipo -create -output allbuild/libSDL2.a allbuild/libSDL2.i386.a allbuild/libSDL2.x86_64.a allbuild/libSDL2.arm64.a allbuild/libSDL2.arm64e.a allbuild/libSDL2.armv7.a allbuild/libSDL2.armv7s.a








