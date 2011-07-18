Hello and welcome to the Getting Started with Chef tutorial at OSCON 2011!

The workshop is chock full of information and hands on examples. In order to save time, please follow this guide on how to get your workstation/laptop set up to follow along. This guide will walk you through a quick and easy way to get Ruby 1.9.2 and Chef ready for use.

The focus for the tutorial is on actually using Chef and seeing what it can do. Some of the best features are server based, and we need an API to interact with. As such, the tutorial will use the Opscode Hosted Chef for the Chef Server. Opscode Hosted Chef is free for up to 5 nodes, so we can maximize learning about Chef itself. If you already have a Chef Server, you are welcome to use it where relevant for the hands on demonstrations but you're on your own for setting it up beforehand. See the _Need Help_ section for links to instructions.

*Please perform the installation below before you arrive at the conference and do not download large packages (like Xcode) over the conference Wifi!*

Workstation Requirements
====

The workshop will use Chef's tools run from a management workstation. You can install the required software on a laptop on your own, or follow the guide below for the "Garden Path" for common installation platforms using RVM (Ruby Version manager). While we have 3 hours for the tutorial, we may not be able to resolve all installation issues.

### Required Software:

* SSH/SCP (this is probably already installed)
* Git
* Ruby (v1.8.7 or v1.9.2)
* RubyGems (v1.3.7+)
* Chef (v0.10.0+)

The instructions below will describe the requirements for installing RVM on the local machine. We use RVM as a known quantity for installing Ruby 1.9.2, since it varies in available package state across Linux and Unix distributions.

Mac OS X Pre-requisites
----

Install Git. This is required for RVM and will be used to retrieve the demo Chef Repository.

* http://gitscm.org/

Install Xcode. This provides the required development tools/headers.

* http://developer.apple.com/technologies/xcode.html

*Please do not download Xcode or install from the App Store over the conference wifi!*

Debian/Ubuntu Pre-requisites
----

Install required developer tools/headers.

    sudo apt-get install build-essential zlib1g-dev libxslt1-dev \
      libxml2-dev git-core libssl-dev

Red Hat/CentOS/Fedora Pre-requisites
----

Install required developer tools/headers.

    sudo yum install gcc gcc-c++ readline-devel zlib-devel libyaml-devel \
      libffi-devel openssl-devel iconv-devel

Install Git from [EPEL](http://fedoraproject.org/wiki/EPEL). Depending on your platform, you may need to change the URL provided below:

    sudo rpm -Uvh http://download.fedora.redhat.com/pub/epel/5/i386/epel-release-5-4.noarch.rpm
    sudo yum install git

----

Install RVM, Ruby and Chef
====

Install RVM, Ruby 1.9.2, Chef, and gems required for Knife. Do this as a normal *non-root user*. If you do this as root, see https://rvm.beginrescueend.com/rvm/install/

    curl -k -s https://rvm.beginrescueend.com/install/rvm | bash
    source "$HOME/.rvm/scripts/rvm" # if you install rvm as root, it installs /usr/local/bin/rvm
    rvm install ruby-1.9.2
    rvm use ruby-1.9.2
    gem install ohai chef knife-ec2 knife-rackspace knife-openstack --no-ri --no-rdoc

Set up RVM defaults in your login shell.
====

1. Add to shell profile (typically ~/.bashrc, ~/.zshrc or ~/.profile).

    [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

2. Set ruby-1.9.2 as the default ruby.

    rvm use --default ruby-1.9.2

New logins will use this version of Ruby and the installed RubyGems.

Verify Installation
====

The following is the output on a CentOS 5.5 system following the instructions above. You should see similar output - RubyGems should be version 1.3.7 or higher.

    % ruby -v
    ruby 1.9.2p180 (2011-02-18 revision 30909) [x86_64-linux]
    % gem -v
    1.6.2
    % knife -v
    Chef: 0.10.0

Sign up for Opscode Hosted Chef
====

If you do not already have a Chef Server, sign up at https://community.opscode.com/users/new. The signup process will also provide instructions how to set up an organization which you will use for your Chef Server. When creating the organization, select the **Free** plan.

Set up a Virtual Machine
====

Using your favorite Virtual Machine software (VirtualBox, VMware Fusion, VMware Workstation, etc), install a Virtual Machine with either:

* [Ubuntu 10.04 or 11.04](http://ubuntu.com)
* [Debian 6](http://debian.org)
* [Scientific Linux 6](https://www.scientificlinux.org/)
* [CentOS 5.6](http://centos.org)

Set up a server type of installation and ensure that you can SSH to the virtual machine as root or a user that can use sudo.

Setup of a virtual machine or distribution installation is outside the scope of the tutorial. If you need help, refer to the appropriate community support channels for your chosen distribution.

Need Help?
====

If you get stuck and need help, please email joshua@opscode.com with "OSCON Chef Tutorial Help" in the subject line.

If you elect to set up your own Chef Server see the Chef wiki installation page, which includes links to guides on setting up the server on a variety of platforms.

* Installation: http://wiki.opscode.com/display/chef/Installation

You can get help through the Chef community if you get stuck.

* IRC: irc.freenode.net #chef
* Mailing list: http://lists.opscode.com
