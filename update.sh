echo "packaging:"
helm package . --destination "/mnt/c/Dropbox/Root/Development/BitBucket/Helm/catalog/packaged"

pushd "/mnt/c/Dropbox/Root/Development/BitBucket/Helm/catalog"

echo "indexing:"
helm repo index .

echo "pushing changes:"
git add *

git commit -m "index update"

git push

popd

echo "done."
