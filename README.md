# Math::Sidef

Perl interface to [Sidef](https://metacpan.org/release/Sidef)'s mathematical library.

# DESCRIPTION

Math::Sidef provides an easy interface to the numerical built-in system of [Sidef](https://metacpan.org/release/Sidef).

It supports all the numerical functions provided by:


* [Sidef::Types::Number::Number](https://metacpan.org/pod/Sidef::Types::Number::Number)

* [Sidef::Types::Number::Mod](https://metacpan.org/pod/Sidef::Types::Number::Mod)

* [Sidef::Types::Number::Gauss](https://metacpan.org/pod/Sidef::Types::Number::Gauss)

* [Sidef::Types::Number::Quadratic](https://metacpan.org/pod/Sidef::Types::Number::Quadratic)

* [Sidef::Types::Number::Quaternion](https://metacpan.org/pod/Sidef::Types::Number::Quaternion)

* [Sidef::Types::Number::Polynomial](https://metacpan.org/pod/Sidef::Types::Number::Polynomial)

* [Sidef::Types::Number::Fraction](https://metacpan.org/pod/Sidef::Types::Number::Fraction)


The returned numerical values are returned as [Math::AnyNum](https://metacpan.org/release/Math-AnyNum) objects.

# SYNOPSIS

```perl
use 5.018;
use Math::Sidef qw(factor composite prime ipow);

say prime(1e9);       # 10^9-th prime number
say composite(1e9);   # 10^9-th composite number

# Prime factorization of 2^128 + 1
say join ' * ', factor(ipow(2, 128) + 1);

# Iterate over prime numbers in range 1..100
Math::Sidef::each_prime(1, 100, sub {
    say $_[0];
});
```

# IMPORT

Any function can be imported, using the following syntax:

```perl
use Math::Sidef qw(function_name);
```

Additionally, for importing all the functions, use:

```perl
use Math::Sidef qw(:all);
```

It's also possible to import only functions for specific uses:

```
    :number        export Number functions, with Number() constructor
    :gauss         export Gauss functions, with Gauss() constructor
    :quadratic     export Quadratic functions, with Quadratic() constructor
    :quaternion    export Quaternion functions, with Quaternion() constructor
    :mod           export Mod functions, with Mod() constructor
    :poly          export Poly functions, with Poly() constructor
    :fraction      export Fraction functions, with Fraction() constructor
```

Example:

```perl
use 5.018;
use Math::Sidef qw(:gauss :quadratic);

say pow(Gauss(3,4), 10);
say powmod(Quadratic(3, 4, 100), 10, 97);
```

The list of functions available for importing, can be listed with:

```perl
CORE::say join ", ", sort @Math::Sidef::EXPORT_OK;
```

while the methods for a specific group (e.g.: quadratic), can be listed with:

```perl
CORE::say join ", ", sort @{$Math::Sidef::EXPORT_TAGS{quadratic}};
```

# INSTALLATION

To install this module type the following:

```console
perl Makefile.PL
make
make test
make install
```

# DEPENDENCIES

This module requires these other modules:

* [Sidef](https://metacpan.org/release/Sidef)
* [Math::AnyNum](https://metacpan.org/release/Math-AnyNum)

# LICENSE AND COPYRIGHT

Copyright (C) 2021 by Daniel "Trizen" Șuteu

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

https://www.perlfoundation.org/artistic-license-20.html

Any use, modification, and distribution of the Standard or Modified
Versions is governed by this Artistic License. By using, modifying or
distributing the Package, you accept this license. Do not use, modify,
or distribute the Package, if you do not accept this license.

If your Modified Version has been derived from a Modified Version made
by someone other than you, you are nevertheless required to ensure that
your Modified Version complies with the requirements of this license.

This license does not grant you the right to use any trademark, service
mark, tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge
patent license to make, have made, use, offer to sell, sell, import and
otherwise transfer the Package with respect to any patent claims
licensable by the Copyright Holder that are necessarily infringed by the
Package. If you institute patent litigation (including a cross-claim or
counterclaim) against any party alleging that the Package constitutes
direct or contributory patent infringement, then this Artistic License
to you shall terminate on the date that such litigation is filed.

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER
AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY
YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR
CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
