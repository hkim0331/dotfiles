# dotfiles/brew

brew bundle があるとしても、brew upgrade はサボれない。

## ant
can be unintalled.
use in `opencv reinstall --build-from-source`?

## openjdk

```
% brew uninstall openjdk@11
Error: Refusing to uninstall /opt/homebrew/Cellar/openjdk@11/11.0.16.1
because it is required by clojure-lsp, which is currently installed.
You can override this and force removal with:
  brew uninstall --ignore-dependencies openjdk@11
% brew uninstall openjdk
Error: Refusing to uninstall /opt/homebrew/Cellar/openjdk/18.0.2.1
because it is required by ant, clojure, clojurescript and leiningen, which are currently installed.
You can override this and force removal with:
  brew uninstall --ignore-dependencies openjdk
```

## mas

```
% mas search 1password
  1333542190  1Password 7 - Password Manager  (7.9.6)
  1569813296  1Password for Safari            (2.3.7)

% mas account
Error: This command is not supported on this macOS version due to changes in macOS. For more information see: https://github.com/mas-cli/mas#known-issues
```



