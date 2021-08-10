#!/usr/bin/env bash

pushd ArcadeCord-Proxy
git rebase --interactive upstream/upstream
popd
