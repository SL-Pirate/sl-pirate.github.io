src_dir="/home/slpirate/Commons/Career/Uni/assignments/WeebDev/portfolio/portfolio-src"
deploy_dir="/home/slpirate/Commons/Career/Uni/assignments/WeebDev/portfolio/deploy"

echo "cleaning deploy directory";
rm -r $deploy_dir/*;
cd $src_dir;
pwd;
flutter build web --release --web-renderer html --base-href /portfolio/;
echo "copying built files";
cp -r $src_dir/build/web/* $deploy_dir;
cd $deploy_dir;
pwd;
echo "commiting to github";
git add .;
git commit -am "Automated commit";
git push;
