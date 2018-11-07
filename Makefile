build: cabal.sandbox.config
	cabal build

cabal.sandbox.config: cpptools.cabal
	cabal sandbox init
	cabal update
	cabal install --only-dependencies

setup-osx:
	brew update
	brew install ghc
	brew install cabal-install
	brew install haskell-stack

.PHONY: setup-osx build

