Zepto.js
========

Shim repository for the [Zepto.js](http://zeptojs.com/) JavaScript library.

Package Managers
----------------

* [Bower](http://twitter.github.com/bower/): `zepto`
* [Component](https://github.com/component/component): `components/zepto`
* [Composer](http://packagist.org/packages/components/zepto): `components/zepto`

Maintanance
-----------

To build a new release, update the target version in the [Makefile](Makefile), and run [make](http://www.gnu.org/software/make/):

    make

Commit and push the changes to the `master` branch:

    git add -A
    git commit -m "Update Zepto"
    git push origin master

Tag and push the new version:

    git tag 1.1.4
    git push origin 1.1.4
