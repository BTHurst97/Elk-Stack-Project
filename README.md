# Elk-Stack-Project
A Collection of my YAML/Bash scripts and diagram of my project 
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.
-Images/Resource Group Diagram.jpg

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the ansible file may be used to install only certain pieces of it, such as Filebeat.

  - ansible-playbook.yml

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly protected, in addition to restricting access to the network.
- Load Balancers act as a reverse proxy and distribute network and or application traffic across several servers. The increase capacity for concurrent users and reliability of applications

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the metrics and system logs.
- Filebeat watches and collects the data for audit logs, deprecation logs, gc logs, server logs, and slow logs
- Metricbeat takes metrics and statistics from your target servers then it collects and ships that data out to the output that you specify, such as elasticsearch or logstash
The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.1   | Linux            |
| Web1     | Webserver| 10.0.0.5   | Linux            |
| Web3     | Webserver| 10.0.0.7   | Linux            |
| ElkVM    | Container| 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump-Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 10.1.0.4
- 10.0.0.5
- 10.0.0.7
Machines within the network can only be accessed by Jump-box-Provisioner. 
- 10.0.0.4

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 10.0.0.1 10.0.0.2    |
| ElkVM    | Yes                 | 10.0.0.4             |
| Web1/Web3| no                  | 10.0.0.4             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- the main advantage of Ansible is that helps considerably with the representation of IAC (infrastructure as code). Which involves provisioning and management of computing infrastructure and related configuration through machine-processable definition files.
 
The playbook implements the following tasks:
- Install docker.io 
- Install python3-pip
- Install Docker Module | name: docker | state: preset |
- download and launch a docker elk container | name: elk | image: sebp/elk:761 | state: started |
- Enable service docker on boot | systemd: | name: docker | enabled: yes|

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

Images/docker_ps_screenshot.png

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.5
- 10.0.0.7

We have installed the following Beats on these machines:
-Filebeat
-Metricbeat

These Beats allow us to collect the following information from each machine:
- these beats allow us to collect information pertaining to log files as well as the specify. Also, we can obtain information from the systems and services of our servers. 

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the ansible host file to /etc/ansible.
- Update the host file to include internal IP addresses of your webservers and ELK server
- Run the playbook, and navigate to Kibana to check that the installation worked as expected.

Answer the following questions to fill in the blanks:_
- Which file is the playbook? Where do you copy it?_
We copy this to our Web virtual machines
- Which file do you update to make Ansible run the playbook on a specific machine? 
Our config file
- How do I specify which machine to install the ELK server on versus which to install Filebeat on?
This is also specified in the config file
- Which URL do you navigate to in order to check that the ELK server is running?
http://<your-Elk-ip>/app/kibana#/home


