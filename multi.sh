#!/bin/bash

# Repository base
REPO_BASE="io.iad2.cloud/artigiancassa/ccl-be:0.0."

# Loop per eseguire il push delle versioni da 1 a 6
for i in {1..38}
do
  echo "Eseguendo docker build per $i" > "dkc_${i}"
  # Costruisci il tag completo
  TAG="${REPO_BASE}${i}"
  echo "Eseguendo docker build per $TAG"
  
  docker build -t "$TAG" -f Dockerfile.be . 

  # Esegui il push
  echo "Eseguendo docker push per $TAG"
  docker push "$TAG"
  rm -f "dkc_${i}"
done