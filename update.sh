helm package . --destination "/mnt/c/Dropbox/Root/Development/BitBucket/Helm/catalog/packaged"
pushd "/mnt/c/Dropbox/Root/Development/BitBucket/Helm/catalog"
helm repo index .
git add * 
git commit -m "index update"
git push
popd
