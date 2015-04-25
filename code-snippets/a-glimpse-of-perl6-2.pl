class Fido {
    is Dog;

    has Str $name;
    has Person $owner is rw;

    method bark (Int $times) {
        say "Wuff!" for 1..$times;
    }
}
