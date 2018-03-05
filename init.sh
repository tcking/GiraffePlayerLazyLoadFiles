playerVersion=0.8.8
rm -r $playerVersion
mkdir $playerVersion
cp -R ../ijkplayer_tc/android/ijkplayer/ijkplayer-*/src/main/libs/* $playerVersion
for file in ./$playerVersion/*
do
	if test -d $file
		then 
		echo $file
		zip $file/so.zip -j $file/*
		rm $file/*.so
	fi
done

