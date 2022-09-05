# CHANGELOG

## Unreleased
* 複数の yml を一気に実行する。Makefile ではない。
* 特定のホストでは実行しないエントリー e.g. m1 では basictex 不要
  => 500MB くらいと割り切ってもよい。
* opecv はコメントアウトしない。brew bundle cleanup で消えてしまう。
  clojure からの呼び出しのために、reinstall --build-from-source が必要になる。
* clojure/installer - 時代遅れになるインストーラを直置きするより、
  インストーラの見つかる URL を置く。


## 1.2.9 - 2022-09-05
### Changed
- git/gitignore_global
  プロジェクトのサブディレクトリに .cpcache, .clj-kondo, .lsp が
  作成されることがある。ignore するのは .cache だけで OK か?

## 1.2.8 - 2022-09-04
### Fix
- emacs.yml inits/ 下のファイルはコピーじゃいけない。sync か。

## 1.2.7 - 2022-09-04
### Fixed
- .cljstyle のインストールを間違っていた。

### Added
- emacs/inits/60_roswell.el

### Changed
- emacs/inits order of loading packages

### Added
- rc/myclirc

## 1.2.6 - 2022-08-30
- updated ~/.cljstyle by `cljstyle migrate`
- updated grope to exclude .shadow-cljs folder

## 1.2.5
- `postgresql@14` instead of `postgresql`.

## 1.2.4
- remove mysql-client
  could not make mariadb dump using mysql-client, `mysqldump`.
  moved to mariadb/mycli.

## 1.2.3 - 2022-08-28
* `git vt` is aliased "tag -l -n --sort=-v:refname"
* `git/deps.edn` is a manual copy of
  `/opt/homebrew/Cellar/clojure/1.11.1.1155/deps.edn` (must improve)
* improved alias `grope` to exclude some meaningless subdirectories.

## 1.2.2 - 2022-08-23
* came back `clojure/cljstyle` for 1 line between defns.
  default is 2 lines.

## 1.2.1 - 2022-08-22
* fixed typo `trash-put`
* learn how to use cljstyle. also removed ~/.cljstyle

## 1.2.0 - 2022-08-22
### Changed
* Brewfile force: no
### Added
* brew/mycli
* brew/trash-cli

## 1.1.0 - 2022-08-21
* vim
* clojure
* rc

## 1.0.2 - 2002-08-21

## 1.0.1 - 2022-08-20
* added Makefile

## 1.0.0 - 2022-08-20
出直し。

* Brewfile
*


## 0.12.3 - 2022-04-01
- 混乱をまとめる。python is python3, pip is pip3.

## 0.12.2 - 2022-04-01
- `python` is an alias of `python3`

## 0.12.0 - 2022-02-14
### Added
- new zsh alias, psj and psq
### Changed
- unignore *.sql
### Fixed
* newer straight does not have (require 'a) line. was it a bug?
* cider loading
  (require 'cl-lib)
  (require 'subr-x)
  ;; hkimura, 2021-09-28
  ;;(require 'a)
  (require 'parseclj-lex)

## 0.11.0-SNAPSHOT
### Removed
- utils/ and utils.yml for being created `utils` project.
### Fixme
- ChromeOS
### Changed
- gitignore_global do not ignore *.sql - 2021-10-04
- ubuntsu-clojure.yml 2021-09-26 linux-install-1.10.3.986.sh
- utils/trash.clj: polish up code.
- zsh/zprofile: include coreutils/libexec/gnubin into PATH.
### Added
- lxd/bin/lxc-default: make lxc guest's interface to default (lxdbr0).
- emacs.d/inits/37_inf-clojure.el


## 0.10.0 - 2021-09-08
### Changed
- utils/wol.clj: wol [on|off|stat] host1 host2 ...
  parallel execution with pmap.

## 0.9.43-SNAPSHOT
### Added
- inventory/bionic.local -- nuc7 lxd guest

### Removed
- removed prompt git branch section from bash/bashrc

## 0.9.42 - 2021-06-19
- utils/symlink-clj: 現在ディレクトリ中の *.clj を
  拡張子なしファイル名からシンボリックリンク。
- stop using apt-cacher-ng


## 0.9.42-SNAPSHOT - 2021-06-03
- favicon: remove work files after making favicon.ico.


## 0.9.41 - 2021-05-27
### Changed
- rename emacs as emacs.d
- aspell-dictionary "en_US" in emacs.d/init.el
- aspell def in emacs.d/inits/90_my.el

## 0.9.40 - 2021-05-21
BUG: 0.9.39 does not work as expected.
### Changed
- rename mkss as cprl.
### Added
- outdated.clj from babashka site.


## 0.9.39 - 2021-05-20
### Changed
* utils.yml: ファイル `*.clj` は特別に `dest: ~/bin/*` でインストール。
  canceled. see 0.9.40.

## 0.9.38 - 2021-05-20
### Added
- rename all-but-me.clj to into.clj.
- utils/all-but-me.clj: (consider command name)
- utils/mkss.clj: make substanciate symbolic links.
### Changed
- emacs/inits/90_my.el: dired-omit-mode


## 0.9.37 - 2021-05-15
### Added
- utils/base64.clj: base64 encoder/decoder.
- utils/favicon.clj: favicon maker.
- utils/trash.clj, update utils.yml.


## 0.9.36 - 2021-05-13
### Changed
want opencv java bindings.
- brew uninstall openjdk && brew install --cask zulu
- zsh/zprofile: define JAVA_HOME and CPPFLAGS for zulu.
  PATH included $JAVA_HOME/bin.

## 0.9.35 - 2021-05-11
### Added
- utils/rmlss for removing all local snap shots.
### Fixed
- inventory/imac3.local. wrongly defined as `localhost`.
### Changed
- chmod 0644 utils/*.

## 0.9.34 - 2021-05-08
### Added
- utils/bak backup files with today's timestamp, -yyyy-mm-dd.

## 0.9.33 - 2021-05-02
### Added
- alias `llss` for list local snapshots.
- rewrote shell script `utils/wol` with babashka, as `wol.clj`.
- alias `tm` for launch TimeMachine.

### 0.9.30 - 2021-03-27
* removed useless files.

### 0.9.28 - 2021-03-27
* added utils/p asciidoc previewer.

### 0.9.27 - 2021-02-25
* changed lxd/bin/lxc-prep.
* added apt-cacher-{ornage,kafka}.
* removed apt-cacher-melt.
* fix tag 0.9.36->0.9.26 in this file, CHANGELOG.md.

### 0.9.26 - 2021-03-24
* merged m2 and m3 versions.

### 0.9.25 - 2021-03-20
* added alias inet to zsh\_aliases.
* bump up for penguin.

### 0.9.25-SNAPSHOT - 2021-03-23
* bug fixed emacs/inits/90\_my.el, memo.
* update lxd/bin/lxc-prep.

### 0.9.24 - 2021-03-12
* ADDED utils/ad, asciidoctor wrapper.
* m3 のブランチでやり直し。

### 0.9.23 - 2021-03-07
* merge ~/docker

### 0.9.22 - 2021-03-04
* CHANGED: mode 0700/0600 for init dir/files

### 0.9.21 - 2021-03-04
* CHANGED: zsh init files.
* CHANGED: brew services start/stop mariadb,postfix,redis.

### 0.9.19 - 2021-03-01
* add r99.yml

### 0.9.17 - 2021-02-12
* homebrew wakeonlan

### 0.9.16 - 2021-02-09
* m2 comes.

### 0.9.15 - 2021-02-07
ダブってても構わないや。
* CHANGED: clojure.yml
* CHANGED: homebrew.yml

### 0.9.13 - 2021-02-06
* homebrew モジュールが動作するようになった。
* m1 用の mariadb がインストールできるようになった。
* leiningen.yml -- for linux. install lein under ~/bin/.
* clojure.yml -- setup ~/.lein and ~/.clojure etc.

### 0.9.11 - 2021-01-27
* updated zsh init files.
  * zshenv ... HOMEBREW_PREFIX を含む環境変数のセットアップ、
  * zprofile ... PATH の設定と zsh_aliases の読み込み、
  * zshrc ... プロンプト、補完、fzf の設定、
  * zsh_aliases ... alias の設定。

### 0.9.10 - 2021-01-26
* clj-init.yml をやめ、clojure.yml に。
  leiningen は homebrew.yml とかぶるが、brew でインストール、
  その後、必要なドットファイルをセットアップ。

### 2021-01-25
* added `docker/` and `docker-containers.yml`.

### 0.9.9 - 2021-01-24
* changed docker.yml to docker-containers.yml.
  installs *.sh scripts to `~/bin`.
* added mysql client PATH to `zsh/zshrc`.

### 0.9.7 - 2021-01-17
* [bugfix: utils/db-conns] syntax error があった。

### 0.9.6 - 2021-01-17
* updated utils/mkram. 256,512,1026からサイズを選べるように。
* updated utils.yml. インストールすべきスクリプトを選美、ループで。

### 0.9.5 - 2021-01-13
* removed alias code. code を起動し、shift-command-P から shell で。
* added .calva/ to git/gitignore\_global.

### 0.9.4 - 2021-01-13
* added alias code
* added .cpcache/ to `gitignore_global`.
* added .lsp/ to `gitignore_global`.

### 0.9.3 - 2021-01-12
* tag づけをサボるとよくない。

### 2021-01-10
* zshrc for non-homebrew zsh
* utils/{mariadb,postgres}.sh を削除。docker を起動するものだった。
  docker へ。

### 0.9.2 - 2021-01-08
* yml をループで書き直し
* inventories/primary.ms を作成
* alias al='ansible-playbook -i localhost, -c local'

### 2021-01-06
* updated clj-init.yml
* updated zsh.yml
* renamed emacs-nox-ubuntu.yml to ubuntu-emacs-nox.yml, etc.
* added yaml-mode.el

### 2020-12-26
* clj-init.yml: practicalli のシンボリックリンクをやめた。

### - 2020-12-20
* clj-init.yml を clojure.yml から独立させた。

### - 2020-12-17
* leiningen 2.9.5
* liq 2.0.5
* vim-iced
* deps.edn

### 0.8.6 - 2020-11-01
* liquid 2.0.4
* cognitect-dev-tools-0.9.51

### 0.8.5 - 2020-10-07
* lxd focal


### 0.8.4 - 2020-10-07
update clojure dot-files and clj.yml.
* cljstyle


### 0.8.3 - 2020-10-02
* 0.8.2 already exists in remote.


### 0.8.2 - 2020-10-02
* clojure: linux-install-1.10.1.697.sh
* clojure/profiles.clj [lein ancient "0.6.15"] を追加。
* clojure/deps.edn 1.10.1.672 はまだ brew ではインストールできない。
  :exec-fn, :exec-args の2行をコメントアウト。


### 0.8.1 - 2020-09-20
* zshenv の PATH, MANPATH を zshrc に移動。
* alias am='Activity Monitor'


### - 2020-09-04
* sweep.rb 200 以上の ip を調査する時、2回に分ける。
* multipass-launch.sh 引数で 18.04 等を取れるように。


### - 2020-08-18
* emacs/inits/90_my.el: exec-path に /usr/local/bin を追加。

### - 2020-08-04
* w.hkim.jp と pk.hkim.jp を ~/bin からコピー。
  whereabouts や pubkeys をチェックアウトするまでもないだろ。


### - 2020-08-02
* remove openjdk-11-jre-headless from clojure-ubuntu.yml since
  leiningen requires openjdk-8-jre-headless.


### 0.7.2 - 2020-08-02
* add alias gm in zsh/zshrc
* add --color option to every ls aliases in zsh/zsh-aliases
* update multipass, clojure
* .gitignore  *.retry
* add export GM to zshenv


### 0.7.0 - 2020-07-25
* define clj() in zshrc.
* divide clojure-for-ubuntu.yml into clojure-live.yml and clojure.yml.
* multipass.sh renamed mp.sh. is it good?
* change .gitignore style. relative paths.


### 0.6.1 - 2020-07-03
* add sinatra.yml and sinatra/ folder.

### 0.6.0 - 2020-06-27
* inventries フォルダ。
* ruby-sinatra.yml

### 0.5.7 - 2020-06-27
* multipass.yml apt を jp.archive に向ける could-config.yml と
  それを引数で指定する multipass.sh

### [0.5.6] - 2020-05-16

* nuc
  https://mongonta.com/f270-howto-exec-command-beforeafter-suspend-on-systemd/
  nuc を止めるには systemctl suspend を使う。

### [0.5.4]

* multipass/cloud-config.yml
* zsh-aliases

### [0.5.3] - 2020-04-09

* resilio sync を多用しなくなったため、memo.txt を ${dotfiles}/ 下にコピー。
90_my.el/memo 関数を複数の候補ファイルのうち最初に見つかったものを開くよう書き換え。

### [0.5.0] - 2020-03-20

* /usr/bin/python3 in ansible.cfg
* gather-facts-no.yml
* utils中のスクリプトで [[ ]] を使うのを全面的に止める(see 0.4.1 below).

### [0.4.6] - 2020-03-14
* javafx14 で REBL が動いた。macos catalina.

### [0.4.4] - 2020-03-14
* 0.4.3 がすでにリモートにあった！

### [0.4.3] - 2020-03-14
* clj -A:rebl-11 は catalina では動かない。
* update clojure
* fix update nuc7 pubkey

### [0.4.1] - 2020-02-21
* [change lxd/prep.sh] [[ is bash command? use [ instead.
* [fix lxd/prep.sh] copy ../ansible\_ssh/authorized\_keys instead of id\_rsa.pub

### [0.4.0] - 2020-02-18
* [add] gems.yml. ruby-2.7.0 をはからずもインストール。tmac2.
  shotgun ici-tanita.rb をエラーなく起動できる gems.

### [0.3.16] - 2020-02-03
* [bug] 0.3.15.2 が imac3 他に届かない。

### [0.3.15.2] - 2020-01-30
* [change] emacs-nox-ubuntu.yml: hosts: ubuntu から all に変更。
* [change] clojure: linux-install.sh のコピー先を /root に。

### [0.3.15.1] - 2020-01-29
* [bugfix] feature/ansible-lxd を取り込み忘れ。

### [0.3.15] - 2020-01-29
* [add] lxd スーツ。
  これまでは git clone dotfiles.git したあと、lxd サブフォルダに入って作業した。
  今後は ansible-playbook -i inventory lxd.yml で。リモートのホームに lxd をコピーする。

### [0.3.14] - 2020-01-27
* zsh-aliases が git pull しても imac3 に反映しない。
  release 0.3.14 を作って push/pull してみる。

### 2020-01-26
strengthen zsh up with fzf.
* [add] zsh-aliases diverge from bash-aliases.
* [change] zshrc uses fzf combinations.

### [0.3.12] 2020-01-25
* clj-new update modules
* bugfix mount-nfs
* {mariadb,mongodb,postgres} pfw-stop

### [0.3.11] 2020-01-24
* purchase dash license, saved as dash/license.dash-license

### 2020-01-14

* ansible-playbook -i pi4.local commonlisp.yml は failed=1 の結果で終わるが、
```
pi4                        : ok=14   changed=7    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0
```

その後、問題なく、ros install lem でき、ros emacs で M-x slime も起動した。

* [fix] clojure.yml: copy clj-new.edn は root ではなくユーザのホームへ。
  become true が後引きしてる。
* [add] インベントリ p4.local
* [replace] bash/bashrc with raspberry4's ~/.bashrc

### 2020-01-11

* [fix] hkim.jp 上で ansible-playbook -i localhost, -c local emacs.yml では
  正しく emacs.d がコピーされない。
  copy モジュールの使い方がまずかった。dest: ~/.emacs.d が正しい。

### 2020-01-07

* [add] zsh-git-prompt

### 0.3.4 2019-12-26

* [change]
  mariadb, mongodb, postgres:
  ローカルプロセスを殺す stop
  ssh トンネルプロセスを殺す stop-pfw

* [change]
  lsof を使ってステータスを確認する方法から ps ax | grep に戻す。
  ssh のつなぎ先がわかったほうがいい。

### 0.3.3
* [add] - 2019-12-21
  utils/latest

* [change] -2019-12-14
  rc/tmux.conf: disable set-window-options.

---

## playbook を localhost に対して実行

inventory は localhost, コネクションは local

```sh
$ ansible-playbook -i localhost, -c local playbook.yml
```

## memo

* fzf
```
$ git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
$ ~/.fzf/install
```

* ghq

    github.com/motemen/ghq

## わかってないところ

* inventory にホスト、グループ（どのアプリをどのホストにインストールするか）を
書いておき、playbook にはどのアプリをインストールするにはどうするかを書いておく。

* clojure.yml, commonlisp.yml, ... のように複数の yml ファイルを用意するのではなく、
yml ファイルは一つ、その hosts: ディレクティブにイントールすべきセクションを指定するのでは？

* 2019-11-11 インベントリー中に定義されたホストを特定してプレイブックをかましたいとき。
こんな感じでできないか？

```sh
$ ansible-playbook host -i inventory play.yml
```

## LXD

LXD ゲストを作成し、ansible するまでの準備をする。
LXD ホストで実行すること。

ansible 用の ssh キーペアを ../ansible 以下に準備。

lxc launch の直後の lxc file push はかならず失敗する。
`未解明`。

## Playbooks

### brew

ぐちゃぐちゃ Homebrew をリプレースできたので、消した。

### clojure clojure.yml

clj + rlwrap および leiningen をセットアップする。

### commonlisp.yml

roswell をセットアップする。
ホスト名として文字 '-' を含む 'common-lisp' でアラートが出たので、
commonlisp とする。

* slime or sly: slime の方が簡単。
* lem

### emacs emacs.yml

synchronize, apt モジュールの練習。
emacs.yml 中には root で emacs-nox をインストールするパートと、
一般ユーザ ubuntu で .emacs.d を再帰的にコピーするパートがある。

### fish

under construction

### git

git は VM 作成時にインストール済み。としないのが Ansible 流か。

### ssh ssh.yml

copy モジュールの練習。config をコピーする。
ansible 用の公開鍵 + 日常ログインのための公開鍵で authorozed\_keys を上書きする。

### zsh zsh.yml

## examples

(上二つは ansible-playbook ではないか？ 2019-12-07)

```sh
$ ansible z2 ssh.yml
$ ansible -i inventory emacs.yml
$ ansile-playook -i localhost, -c local zsh.yml
```

## changelog

続きは CHANGELOG.md へ。

- 2020-03-07 added lxd/bin/lxc-shell
- [0.3.3]
- [0.2.6] imac3/tmac2/mbp2 inventory. ghq interface to bashrc and zshrc.
- [0.2.5] imac3/tmac2 tag version inconsistent. try a new tag 0.2.5
- [0.2.3] update ssh.yml
- [0.2.2] commonlisp 2019-11-10
- [0.2.1] clojure/leiningen 2019-11-10
- [0.2] update subfolder lxd 2019-11-10
  divide old BUILD script into init/prep shell scripts. and also provide destroy.
