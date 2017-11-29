Vagrant Elasticsearch
=======================

Installation
-------------

1. install [vagrant](https://www.vagrantup.com/DOCS/installation/)
1. Run `vagrant up` in the repo (will install needed resources)
1. Check it works: [http://localhost:9200](http://localhost:9200) should respond with a JSON

If you're into Kibana (GUI for Elasticsearch)
-----------------------------------------------

Not currently included in the VM.

1. Install Kibana
    - Mac - `brew install kibana`
1. Run `kibana` in the command line
1. Check it works: [http://localhost:5601](http://localhost:5601) should show a GUI
