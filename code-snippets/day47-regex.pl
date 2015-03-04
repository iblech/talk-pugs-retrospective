"(balanced)" ~~ rx:perl5{^(\()?[^()]+(?(1)\))$};
# bool::true

"(balanced" ~~ rx:perl5{^(\()?[^()]+(?(1)\))$};
# bool::false
