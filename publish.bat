@echo off

helm package . --destination ..\catalog 
pushd ..\catalog 
helm repo index . 
git add *
git commit -m "index update"
git push
popd