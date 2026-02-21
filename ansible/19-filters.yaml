- name: demo on filters
  hosts: local
  connection: local
  vars:
    topics: linux, shell, ansible, terraform
    course: "DevOps with Ansible"
    myIp: "192.23.89.123"
    tagsMap:
      name: ansible
      project: roboshop
      component: catalogue
    tagsList: [
        {
            "key": "name",
            "value": "ansible"
        },
        {
            "key": "project",
            "value": "roboshop"
        },
        {
            "key": "component",
            "value": "catalogue"
        }
    ]
  tasks:
  - name: greeting
    ansible.builtin.debug:
      msg: "Hi Sivakumar, {{ GREETING | default('Good Morning') }}"

  - name: convert string to list
    ansible.builtin.debug:
      msg: "{{ topics | split(',') }}"

  - name: convert map to list
    ansible.builtin.debug:
      msg: "{{ tagsMap | dict2items }}"

  - name: convert list to map
    ansible.builtin.debug:
      msg: "{{ tagsList | items2dict }}"

  - name: read students yaml
    ansible.builtin.set_fact: # setting the variable
      student_yaml: "{{ lookup('file', 'students.yaml' ) | from_yaml }}"

  - name: convert YAML to JSON
    ansible.builtin.debug:
      msg: "{{ student_yaml | to_nice_json  }}"

  - name: convert to upper case
    ansible.builtin.debug:
      msg: "{{ course | upper }}"

  - name: convert to lower case
    ansible.builtin.debug:
      msg: "{{ course | lower }}"

  - name: check ipv4
    ansible.builtin.debug:
      msg: "{{ myIp | ansible.utils.ipv4 }}"