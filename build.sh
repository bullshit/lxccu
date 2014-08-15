
start=`date +%s`
cd src
yes | debuild -us -uc -d -I.git*
end=`date +%s`
runtime=$((end-start))
echo "Runtime ${runtime} sec."
