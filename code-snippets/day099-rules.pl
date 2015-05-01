grammar Perl6 {
    token ident    { <alpha> \w+ }

    token name     { <ident> [ '::' <ident> ] * }

    token sigil    { '$' | '@' | '&' | '%' }

    token variable { <sigil> <name> }
}
