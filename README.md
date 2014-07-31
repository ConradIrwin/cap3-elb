This gem adds capistrano3 tasks for adding and removing nodes from
Amazon's Elastic Load Balancer.

## Installation

1. Add `cap3-elb` to your Gemfile

```
# Gemfile
gem 'cap3-elb'
```

2. Use `upload` scm in Capistrano
```
# Capfile
require 'cap3-elb'
```

3. Configure the name of the load balancer and your AWS credentials. I suggest
   storing the credentials in something like
   [dotgpg](https://github.com/ConradIrwin/dotgpg) and using environment
   variables to avoid storing these keys alongside your code.

```
# config/deploy.rb

set :load_balancer, "website"

set :aws_secret_access_key, ENV.fetch("AWS_SECRET_ACCESS_KEY")
set :aws_access_key_id, ENV.fetch("AWS_ACCESS_KEY_ID")
```

## Usage

### cap elb:status

This shows you a list of all your hosts along with their load-balancer status.

```
bundle exec cap elb:status
```

### cap elb:add

The `elb:add` task adds hosts to the load balancer. By default it will add
all hosts, but you can filter things to only add one specific host using
capistrano's `--host` flag:

```
bundle exec cap elb:add --host web1.example.com
```

### cap elb:remove

The `elb:remove` task removes hosts from the load balancer. It will abort
if you try and remove more than one node at a time, and also if removing
the node would result in no healthy instances.

```
bundle exec cap elb:remove --host web1.example.com
```

## Meta-fu

`cap3-elb` is released under the MIT license, see LICENSE.MIT for
details. Bug reports and feature requests are welcome.


