function gitlog() {

    RANGE='';
    SINCE='';

    # If an argument was passed
    if [ -n "$1" ];
    then
        # If the argument passed is not numeric, probably a hash
        if ! [[ "$1" =~ ^[0-9]+$ ]];
        then
            RANGE=$1

        # If the argument passed is numric
        else
            SINCE="--since=\"`date -v-${1}H`\""
        fi
    # If an argument was  not passed
    else
        SINCE="--since=\"`date -v-12H`\""
    fi

    NULL=`clear`;

    echo "$SINCE";
    echo "$RANGE";

    git log $RANGE --reverse --author="`git config user.name`" --format="%h (%s)" $SINCE
}
