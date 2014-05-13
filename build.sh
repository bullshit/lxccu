
start=`date +%s`
cd src
debuild -us -uc -d -I.git*
end=`date +%s`
runtime=$((end-start))
echo "Runtime ${runtime} sec."
