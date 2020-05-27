# iconv跨平台编译

1. 配置NDK环境变量，NDK版本21。
2. export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/darwin-x86_64
3. export API=21
4. export TARGET=aarch64-linux-android
5. export AR=$TOOLCHAIN/bin/$TARGET-ar
6. export AS=$TOOLCHAIN/bin/$TARGET-as
7. export CC=$TOOLCHAIN/bin/$TARGET$API-clang
8. export CXX=$TOOLCHAIN/bin/$TARGET$API-clang++
9. export LD=$TOOLCHAIN/bin/$TARGET-ld
10. export RANLIB=$TOOLCHAIN/bin/$TARGET-ranlib
11. export STRIP=$TOOLCHAIN/bin/$TARGET-strip
12. PREFIX=/Users/tong/Downloads/libiconv-1.16/android-build
13. ./configure --host $TARGET --prefix=$PREFIX/arm64-v8a
14. make & make install