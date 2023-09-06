---
- name: install apache server
  hosts: all
  become: yes

  tasks:
    - name: install apache package
      apt:
        name: apache2
        state: present

    - name: started apache package
      service:
        name: apache2
        state: started
        enabled: true
