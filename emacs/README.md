## emacs-init

## unreleased

## 2022-08-20
straight/repos/straight.el/bootstralel 中の 96 行め、
nongnu リポジトリをコメントアウトしてstraight を起動する。

## 2021-09-27
cider 1.1.1 バグってないか？

## straight
* https://www.reddit.com/r/emacs/comments/caifq4/package_updates_with_straight/

As I understand it, packages aren't updated automatically.
You'd generally run straight-pull-package to get the latest version of a given
package (or straight-pull-all to update everything),
and then straight-freeze-versions to persist the on-disk versions to your
lockfile (~/.emacs.d/straight/versions/default.el by default).
You can run straight-thaw-versions at any time to reset on-disk packages to
their locked versions, making your config totally reproducible across
environments.


## 2020-09-02

custom を init.el から inits/90-my.el に移動。

## paredit?

paredit.el is required by parinfer.el. same in Sublime3?

