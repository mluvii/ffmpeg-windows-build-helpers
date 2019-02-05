#!/bin/bash
set -e

OUTPUTDIR=/output
COMMIT=31a1d2aa83096c3a07bd2f943bb9be6bda411147 # release/4.1

./cross_compile_ffmpeg.sh --build-ffmpeg-shared=n --build-ffmpeg-static=y --disable-nonfree=n --build-intel-qsv=y --compiler-flavors=win64 --enable-gpl=y --high-bitdepth=n --ffmpeg-git-checkout-version=$COMMIT

mkdir -p $OUTPUTDIR/static/bin
cp -R -f ./sandbox/win64/ffmpeg_git_with_fdk_aac_$COMMIT/ffmpeg.exe $OUTPUTDIR/static/bin
cp -R -f ./sandbox/win64/ffmpeg_git_with_fdk_aac_$COMMIT/ffprobe.exe $OUTPUTDIR/static/bin
cp -R -f ./sandbox/win64/ffmpeg_git_with_fdk_aac_$COMMIT/ffplay.exe $OUTPUTDIR/static/bin

