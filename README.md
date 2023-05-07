Ansible role : OctoPrint
=========

Roles to install and configure the [OctoPrint](https://octoprint.org) 3D printing application on
Debian-based systems.

Requirements
------------

No external requirements needed.

Role Variables
--------------

| Variable                | Required | Default | Choices                   | Comments                                 |
|-------------------------|----------|---------|---------------------------|------------------------------------------|
| octoprint_port          | no       | 5000    |                           | OctoPrint port                           |
| ustreamer_port          | no       | 9000    |                           | uStreamer port                           |
| ustreamer_device        | no       | "/dev/video0" |                     | uStreamer video device path              |
| octoprint_user          | no       | "octoprint" |                       | OctoPrint account name                   |
| octoprint_version       | no       | 1.8.7   |                           | OctoPrint version                        |

Dependencies
------------

No external dependencies.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```yaml
- name: Install OctoPrint on target hosts
  hosts: all
  roles:
    - octoprint_install
```

License
-------

MIT License

Author Information
------------------

Scott Wysocki - [http://swysocki.com](http://swysocki.com)
