#!/usr/bin/env bash -euo pipefail

(cd $(dirname "$0")
    web_dir="./vendor/pdf.js/web/zotero"
    mkdir -p "$web_dir"

    (cd "$web_dir"
        for pdf_file_path in $HOME/Zotero/storage/**/*.pdf; do
            file_name="$(basename "$pdf_file_path")"
            if [[ ! -f "$file_name" ]]; then
                echo "link $file_name to $pdf_file_path"
                ln -s "$pdf_file_path" "$file_name"
            fi
        done
    )

)
