
VALUES_FILE="${1:-values.yaml}"

echo "packaging:"
cp $VALUES_FILE values.yaml 2>nul
helm package .  --destination "/mnt/c/Dropbox/Root/Development/BitBucket/Helm/catalog/packaged"

pushd "/mnt/c/Dropbox/Root/Development/BitBucket/Helm/catalog"

echo "indexing:"
helm repo index .

echo "pushing changes:"
git add *

git commit -m "index update"

git push

popd

echo "done."
