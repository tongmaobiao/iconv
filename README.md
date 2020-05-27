# iconv跨平台编译

1. 配置NDK环境变量。

2. export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/darwin-x86_64

   export API=21

   export TARGET=aarch64-linux-android
   export AR=$TOOLCHAIN/bin/$TARGET-ar
   export AS=$TOOLCHAIN/bin/$TARGET-as
   export CC=$TOOLCHAIN/bin/$TARGET$API-clang
   export CXX=$TOOLCHAIN/bin/$TARGET$API-clang++
   export LD=$TOOLCHAIN/bin/$TARGET-ld
   export RANLIB=$TOOLCHAIN/bin/$TARGET-ranlib
   export STRIP=$TOOLCHAIN/bin/$TARGET-strip

3. PREFIX=/Users/tong/Downloads/libiconv-1.16/android-build

4. ./configure --host $TARGET --prefix=$PREFIX/arm64-v8a

5. make & make install