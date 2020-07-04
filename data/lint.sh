#!/bin/bash

jq -S ".|=sort_by(.dependentFilterListId, .dependencyFilterListId)" Dependent.json > Dependent.tmp
mv Dependent.tmp Dependent.json

jq -S ".|=sort_by(.id)" FilterList.json > FilterList.tmp
mv FilterList.tmp FilterList.json

jq -S ".|=sort_by(.filterListId, .languageId)" FilterListLanguage.json > FilterListLanguage.tmp
mv FilterListLanguage.tmp FilterListLanguage.json
