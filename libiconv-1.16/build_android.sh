#主机需配置NDK环境变量

export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/darwin-x86_64
export API=21

PREFIX=/Users/tong/Downloads/libiconv-1.16/android-build

function build_android_arm64-v8a {
    #arm64-v8a
    export TARGET=aarch64-linux-android
    export AR=$TOOLCHAIN/bin/$TARGET-ar
    export AS=$TOOLCHAIN/bin/$TARGET-as
    export CC=$TOOLCHAIN/bin/$TARGET$API-clang
    export CXX=$TOOLCHAIN/bin/$TARGET$API-clang++
    export LD=$TOOLCHAIN/bin/$TARGET-ld
    export RANLIB=$TOOLCHAIN/bin/$TARGET-ranlib
    export STRIP=$TOOLCHAIN/bin/$TARGET-strip
    ./configure --host $TARGET --prefix=$PREFIX/arm64-v8a
    make & make install
};

function build_android_armeabi-v7a {
    #armeabi-v7a
    export TARGET=armv7a-linux-androideabi
    export AR=$TOOLCHAIN/bin/arm-linux-androideabi-ar
    export AS=$TOOLCHAIN/bin/arm-linux-androideabi-as
    export CC=$TOOLCHAIN/bin/$TARGET$API-clang
    export CXX=$TOOLCHAIN/bin/$TARGET$API-clang++
    export LD=$TOOLCHAIN/bin/arm-linux-androideabi-ld
    export RANLIB=$TOOLCHAIN/bin/arm-linux-androideabi-ranlib
    export STRIP=$TOOLCHAIN/bin/arm-linux-androideabi-strip
    ./configure --host $TARGET --prefix=$PREFIX/armeabi-v7a
    make & make install
};

function build_android_x86 {
    #x86
    export TARGET=i686-linux-android
    export AR=$TOOLCHAIN/bin/$TARGET-ar
    export AS=$TOOLCHAIN/bin/$TARGET-as
    export CC=$TOOLCHAIN/bin/$TARGET$API-clang
    export CXX=$TOOLCHAIN/bin/$TARGET$API-clang++
    export LD=$TOOLCHAIN/bin/$TARGET-ld
    export RANLIB=$TOOLCHAIN/bin/$TARGET-ranlib
    export STRIP=$TOOLCHAIN/bin/$TARGET-strip
    ./configure --host $TARGET --prefix=$PREFIX/x86
    make & make install
};

function build_android_x86_64 {
    #x86_64
    export TARGET=x86_64-linux-android
    export AR=$TOOLCHAIN/bin/$TARGET-ar
    export AS=$TOOLCHAIN/bin/$TARGET-as
    export CC=$TOOLCHAIN/bin/$TARGET$API-clang
    export CXX=$TOOLCHAIN/bin/$TARGET$API-clang++
    export LD=$TOOLCHAIN/bin/$TARGET-ld
    export RANLIB=$TOOLCHAIN/bin/$TARGET-ranlib
    export STRIP=$TOOLCHAIN/bin/$TARGET-strip
    ./configure --host $TARGET --prefix=$PREFIX/x86_64
    make install
};
#build_android_arm64-v8a
#build_android_armeabi-v7a
#build_android_x86
build_android_x86_64