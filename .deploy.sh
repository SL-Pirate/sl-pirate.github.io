src_dir="/home/slpirate/Commons/Career/Uni/assignments/WeebDev/portfolio/portfolio-src"
deploy_dir="/home/slpirate/Commons/Career/Uni/assignments/WeebDev/portfolio/deploy"

echo "cleaning deploy directory";
rm -r $deploy_dir/*;
cd $src_dir;
# flutter build web --release --base-href /sl-pirate.github.i/;
flutter build web --release;
echo "copying built files";
cp -r $src_dir/build/web/* $deploy_dir;
cd $deploy_dir;
echo "commiting to github";
git add .;
git commit -am "Automated commit";
git push;
