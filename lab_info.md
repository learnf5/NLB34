There are 3 lab systems: Student Workstation, NGINX Server, and the Backend Server.

The **Student Workstation** is an Ubuntu Linux system that is a graphical system which will be your starting point for all labs. Student Workstation and NGINX Server communicate on the External 10.10/16 network.

The **NGINX Server** is an Ubuntu Linux system with NGINX Plus installed. The NGINX Server has a second network interface connected to the Internal 172.16/16 network and represents an internal enterprise network that could host application servers and other enterprise IT systems.

The **Backend Server** is an Ubuntu Linux system with Docker installed to host 3 Containers configured with NGINX Web Server services.
NGINX serves HTTP (.htm or .html) and PHP (.php) depending on the filename extension. 
Additionally, the Backend server provides Telnet service on port 23 The configuration of these 3 NGINX containers is not the focus of this course.for the IP addresses 172.16.20.161, 162 and 163.
