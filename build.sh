workdir=`pwd`
mv lxccu_* old/

start=`date +%s`
cd src
yes | debuild -us -uc -d -I.git*
end=`date +%s`
runtime=$((end-start))
echo "Runtime ${runtime} sec."

cd "$workdir"


_version=$(cat ./src/debian/changelog | \
  head -1 | perl -ne '$_=~ /.*\((.*)\).*/; print $1;')
scp "lxccu_${_version}_all.deb" "lxccu.com:~/lxccu_${_version}_all.deb"
ssh -t lxccu.com 'sudo mv lxccu_*_all.deb incoming/testing/main && sudo chown -R cdn incoming/testing && sudo su - cdn "./apt_incoming.sh"'
