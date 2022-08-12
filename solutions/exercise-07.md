One way to do it, is to simply cat instead of count the files and then
chain some more 'sed' deletions:


    find . -name '*.py' -not -path '*/test/*' -print0 | xargs -0 cat | sed -e '/^#/d' -e '/^$/d' | wc


A version using `grep`:

    find . -name '*.py' -not -path '*/test/*' -print0 | xargs -0 grep --no-filename --invert-match -e '^#' -e '^$' | wc
