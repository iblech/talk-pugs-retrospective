my @foo = gather {
    for @data {
        take ... if ...;
        take ... if ...;
    }
};
