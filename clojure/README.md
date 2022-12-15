# clojure

## deps.edn

[practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn)

## tools

### update
    clj -Ttools install-latest

### antq

```
# Install tool
clojure -Ttools install-latest :lib com.github.liquidz/antq :as antq
# Uninstall tool
clojure -Ttools remove :tool antq
# Update tool
clojure -Ttools install-latest :tool antq

# Execute
clojure -Tantq outdated
# Execute with parameter
clojure -Tantq outdated :upgrade true
# Show help
clojure -A:deps -Tantq help/doc
# Upgrade oudated dependencies
clojure -Tantq outdated :check-clojure-tools true :upgrade true
```
