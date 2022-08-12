First find the tgz files:

    find . -name '*tgz'


Then run the 'file' command on them:

    find . -name '*tgz' -exec file {} \;

or:

    find . -name '*tgz' | xargs file


