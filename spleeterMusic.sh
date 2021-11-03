
res=`ffmpeg --help | grep version`
if [[ $res == '' ]];then
brew install ffmpeg
fi

res=`python --version`
if [[ "$res" =~ "command not found" ]];then
brew install python
fi

res=`pip --version`
if [[ "$res" =~ "command not found" ]];then
brew install pip
fi

res=`spleeter --version | grep Version`
if [[ $res == '' ]];then
pip install spleeter
fi

if [ ! -n "$1" ];then
echo sh spleeterMusic.sh 音乐文件
exit 1
fi
spleeter separate $1 -p spleeter:5stems -o spleeter
