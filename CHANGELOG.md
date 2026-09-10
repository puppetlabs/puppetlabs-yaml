## Release 1.0.0

### Breaking changes

* **Support Puppet 9 / Ruby 4**

    The module now targets Puppet 9, raising the `puppet` requirement to `>= 8.0.0 < 10.0.0`. Gem
    dependency metadata baked into a module built under Ruby 4/Puppet 9 differs from a
    Ruby 3.1/Puppet 8 build, so this is a breaking change for consumers -- bumped to 1.0.0 per SemVer.

## Release 0.2.0

### New features

* **Set `resolve_reference` task to private** ([#1](https://github.com/puppetlabs/puppetlabs-terraform/pulls/1))

    The `resolve_reference` task has been set to `private` so it no longer appears in UI lists.

## Release 0.1.0

This is the initial release.
