
VALUES_FILE="${1:-values.yaml}"

#echo "unlocking..."
#source ./git-unlock.sh

echo "packaging:"
cp $VALUES_FILE values.yaml 2>/dev/null
helm package .  --destination "/mnt/c/Dropbox/Root/Development/BitBucket/Helm/catalog/packaged"

pushd "/mnt/c/Dropbox/Root/Development/BitBucket/Helm/catalog"

echo "indexing:"
helm repo index .

echo "pushing changes:"
git add *

git commit -m "index update"

# echo "committed, sleeping for a couple seconds..."
# sleep 1

echo "pushing..."
git push

popd

echo "done."
