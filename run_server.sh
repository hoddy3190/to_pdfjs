#!/usr/bin/env bash -euo pipefail

should_update=${1:-''}

(cd $(dirname "$0")

    # git submodule update

    (cd "./vendor/pdf.js/"
        # npm i
        ../../symlink_to_zotero_pdf.sh
        npx gulp server &
        open "http://localhost:8888/web/zotero"
    )

)