#!/bin/bash
export ARTIFACT_DIR="${VERSION_TAG}"

export ARTIFACT_TGZ="${VERSION_TAG}.tgz"
export ARTIFACT_ZIP="${VERSION_TAG}.zip"
cd dist/${DEFAULT_TARGET}-*
mv ${DEFAULT_TARGET}-update-* ${ARTIFACT_DIR}
tar --format=ustar -czvf ../../${ARTIFACT_TGZ} ${ARTIFACT_DIR}
cd ${ARTIFACT_DIR}
7z a ../../../${ARTIFACT_ZIP} .
cd ../../..

echo "ARTIFACT_TGZ=${ARTIFACT_TGZ}" >> $GITHUB_ENV
echo "ARTIFACT_ZIP=${ARTIFACT_ZIP}" >> $GITHUB_ENV
