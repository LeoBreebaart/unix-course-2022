This one is tricky!

    find . -name '*.pro' -exec mv '{}' `basename '{}' .pro`.py \;

will not work because `basename` gets evaluated too early.

Better is:

    for f in `find . -name '*.pro'`; do mv $f `dirname $f`/`basename $f .pro`.py; done


    for f in `find . -name '*.py'`; do sed -i s/comment$/comments/ $f; done

