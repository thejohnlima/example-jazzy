# Generate swift docs using jazzy

`jazzy` is a command-line utility that generates documentation for Swift or Objective-C

<https://github.com/realm/jazzy>

## Installation

```sh
[sudo] gem install jazzy
```

## Usage

Create the `.jazzy.yaml` file on the same level as `.xcodeproj`

Example using `cocoapods`:

```yaml
# Jazzy config
module: Demo
author: thejohnlima
author_url: https://github.com/thejohnlima
copyright: '© 2021 [thejohnlima](https://github.com/thejohnlima).'
swift_version: 5.3.2
xcodebuild_arguments: [clean,build,-workspace,Demo.xcworkspace,-scheme,Demo]
min_acl: internal
hide_documentation_coverage: false
theme: apple
output: 'docs/swift_output'
use_safe_filenames: true
undocumented_text: 'Most of the properties; overrideable methods and functions; implementation of protocols do not need to have a description. Adding so pollutes the source file with comments. 🤓'

exclude: 
  - '*AppDelegate*'
  - '*ViewController*'
```

Then, just run `jazzy` (without any arguments) from the root of your project!

```sh
jazzy
```

```sh
Using config file /Users/thejohnlima/Downloads/Demo/.jazzy.yaml
Running xcodebuild
Parsing AppDelegate.swift (1/3)
Parsing Utility.swift (2/3)
Parsing ViewController.swift (3/3)
92% documentation coverage with 1 undocumented symbol
included 13 internal, public, or open symbols
jam out ♪♫ to your fresh new docs in `docs/swift_output`
```

After that just open the `index.html` file to see the documentation.
