npm run build
cd dist
git init
git add -A
git commit -m 'deploy'
git config --local user.name "liub1934"
git config --local user.email "liub1934@gmail.com"
git push -f https://${access_token}@github.com/liub1934/vue-use-tinymce.git master:gh-pages