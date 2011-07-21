Welcome to OSCON 2011!

This repository is used in the Getting Started with Chef tutorial.

Getting Started
====

Prior to this tutorial, you should have followed the installation instructions posted on the tutorial web page on the OSCON site, or the instructions emailed to you by O'Reilly conference organizers. If not, don't worry, a printed copy is available when you walk in the door, and the instructions are included in the [INSTALL.md](INSTALL.md) file in this repository.

You should be ready for the hands on portions of the tutorial with:

* Ruby and Chef installed on your local workstation.
* Your user private key file (USER.pem).
* An organization created in the Opscode Hosted Chef server.
* The organization validation client private key file (ORGNAME-validator.pem)
* Knife configuration (knife.rb)

You can download your user private key, organization validation key and knife configuration file from Opscode Hosted Chef. Put the files in .chef of this repository.

Upload Repository
====

Perform the following commands to upload everything in the repository to the Opscode Hosted Chef server.

    knife cookbook upload -a
    knife role from file base.rb
    knife data bag create users
    knife data bag from file luke.json
    knife data bag from file leia.json

This is covered during the tutorial as well.

Configure a Node
====

You can configure a new node with `knife bootstrap` by using one of the commands below.

    #  Use -Ppassword or -i ~/.ssh/ssh-private-key-for-you
    # Ubuntu:
    knife bootstrap $IPADDRESS -r 'role[base]'
    knife bootstrap $IPADDRESS -r 'role[base]' -x ubuntu --sudo
    # Debian 6:
    knife bootstrap $IPADDRESS -r 'role[base]' -x root
    knife bootstrap $IPADDRESS -r 'role[base]' -x username --sudo
    # CentOS 5.x:
    knife bootstrap $IPADDRESS -r 'role[base]' -d centos5-gems
    knife bootstrap $IPADDRESS -r 'role[base]' -d centos5-gems -x username --sudo
    # Scientific Linux 6.x:
    knife bootstrap $IPADDRESS -r 'role[base]' -d scientific6-gems
    knife bootstrap $IPADDRESS -r 'role[base]' -d scientific6-gems -x username --sudo 

For example, on my Ubuntu 10.04 VMware Fusion machine (Ubuntu 10.04):

    knife bootstrap 172.16.156.130 -r 'role[base]' -x jtimberman --sudo -Poscon2011

See `knife bootstrap -h` for more options, or `knife help bootstrap` for the man page.

License and Author
====

Author:: Joshua Timberman (<joshua@opscode.com>)

Copyright:: 2011, Opscode, Inc

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
