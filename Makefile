# DEFINITIONS
RUBY := $(shell command -v ruby 2>/dev/null)
HOMEBREW := $(shell command -v brew 2>/dev/null)
COCOAPODS := $(shell command -v pod 2> /dev/null)


# Default Makefile func
default: setup


# SwiftLint Report
linter_html:
	$(shell swiftlint lint --reporter html > swiftlint.html)
	$(shell open swiftlint.html)

linter_json:
	$(shell swiftlint lint --reporter json > swiftlint.json)
	$(shell open swiftlint.json)

linter_emoji:
	$(shell swiftlint lint --reporter emoji > swiftlint.txt)
	$(shell open swiftlint.txt)

linter_clean:
	rm -rf swiftlint.txt swiftlint.json swiftlint.html


# Check if Ruby is installed
check_for_ruby:
	$(info Checking for Ruby ...)

ifeq ($(RUBY),)
	$(error Ruby is not installed)
endif


# Check if Homebrew is available
check_for_homebrew:
	$(info Checking for Homebrew ...)

ifeq ($(HOMEBREW),)
	$(error Homebrew is not installed)
endif


# Setup for Cocoapods
setup: \
	git \
	xcode_commandline_tool \
	pod_sdk_install \
	pod \
	pod_install


# Setup for Carthage
setup_carthage: \
	git \
	carthage \
	carthage_install

# Git Space
git:
	git init


# Git-Flow Space
git-flow:
	brew install git-flow
	git flow init


# Fastlane Space
fastlane:
	brew cask install fastlane
	fastlane init


# Pod Space
pod:
	pod init
	sed '/end/d' Podfile > tempfile.txt
	@echo "	pod 'SwiftLint'" >> tempfile.txt
	@echo "end" >> tempfile.txt

	rm -rf Podfile
	mv "tempfile.txt" "Podfile"

	touch .gitignore
	@echo "Pods/" > .gitignore

	open Podfile

pod_install:
	pod install
	xed .

pod_repo_update:
	pod install --repo-update

pod_sdk_install:
	$(info Checking for Cocoapods ...)

ifeq ($(COCOAPODS),)
	$(info Installing Cocoapods ...)
	$(shell sudo gem install cocoapods --no-ri --no-rdoc || info "Executing \`gem install cocoapods\` failed")
endif


# Carthage Space
carthage:
	touch Cartfile
	open Cartfile

carthage_install:
	brew unlink carthage || true
	brew install carthage
	brew link --overwrite carthage

cartage_sdk_install:
	$(info Install Carthage ...)
	brew update
	brew install carthage


# Xcode Commandline Tool Install
xcode_commandline_tool:
	$(shell xcode-select --install || info "Failed xcode-select")


# Clean Method
clean:
	rm -rf .gitignore .git Podfile Podfile.lock Pods *.xcworkspace
