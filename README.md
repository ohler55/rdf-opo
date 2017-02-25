# rdf-opo :: opo storage adapter for RDF.rb

An [RDF.rb][] storage adapter for opo.

See <http://blog.datagraph.org/2010/04/rdf-repository-howto> for an overview of the general approach of creating RDF::Repository adaptors.

## Requirements

The 'rdf', 'rdf-spec', and 'rspec' gems are required.

    $ sudo gem install rdf rdf-spec rspec

Also required is the quad store, [opo][http://opo.technology]

## Implementation Notes

The HTTP REST API to opo is used for connectivity. Future versions may use a
more direct approach.

### Support



### Authors
 * [Peter Ohler][] | <http://github.com/ohler55> | <http://ohler.com>

### Contributing

This repository uses [Git Flow](https://github.com/nvie/gitflow) to manage
development and release activity. All submissions _must_ be on a feature
branch based on the _develop_ branch to ease staging and integration.

* Do your best to adhere to the existing coding conventions and idioms.
* Don't use hard tabs, and don't leave trailing whitespace on any line.
* Do document every method you add using [YARD][] annotations. Read the
  [tutorial][YARD-GS] or just look at the existing code for examples.
* Don't touch the `.gemspec`, `VERSION` or `AUTHORS` files. If you need to
  change them, do so on your private branch only.
* Do feel free to add yourself to the `CREDITS` file and the corresponding
  list in the the `README`. Alphabetical order applies.
* Do note that in order for us to merge any non-trivial changes (as a rule
  of thumb, additions larger than about 15 lines of code), we need an
  explicit [public domain dedication][PDD] on record from you.

### License

MIT License

[W3C-ruby-rdf mailing list]:        http://lists.w3.org/Archives/Public/public-rdf-ruby/
[Peter Ohler]: http://ohler.com
[RDF.rb]:           http://rdf.rubyforge.org/
