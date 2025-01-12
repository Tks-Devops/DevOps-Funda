Role Name
=========
# Apache Role

An Ansible role to install, configure, and manage the Apache web server.

## Features
- Installs the Apache web server.
- Configures the Apache server with custom templates.
- Creates necessary directories and sets permissions.
- Starts and manages the Apache service.
- Supports Ubuntu and Debian distributions.

## Requirements
- Ansible 2.9 or higher.
- Supported platforms:
  - Ubuntu (bionic, focal, jammy)
  - Debian (10, 11)

## Role Variables
The following variables can be customized in `vars/main.yml` or overridden in playbooks:

| Variable          | Default Value   | Description                            |
|-------------------|-----------------|----------------------------------------|
| `apache_name`     | `Kelly`         | Name of the Apache instance.           |
| `apache_port`     | `91`            | Port on which Apache listens.          |
| `apache_package`  | `apache2`       | Name of the Apache package.            |
| `apache_group`    | `apache`        | Group for Apache user.                 |
| `apache_user`     | `apache`        | User for running Apache.               |

## Dependencies
- Common role for basic setup (if required).

## Example Playbook
```yaml
- name: Deploy Apache web server
  hosts: webservers
  roles:
    - role: apache
      vars:
        apache_port: 8080

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

MIT

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).

---

### 2. `defaults/main.yml`
Default values for variables, which can be overridden in playbooks.
```yaml
---
apache_name: Kelly
apache_port: 91
apache_package: apache2
apache_group: apache
apache_user: apache
