## Course 3: Networking and Cloud
- TCP/IP, OSI models!

- Networks help organizations communicate and connect. But communication makes network attacks more likely because it allows a malicious actor to take advantage of vulnerable devices and unprotected networks. Communication over a network happens when data is transferred from one point to another. Pieces of data are typically referred to as data packets.

Data packet - A basic unit of information that travels from one device to another within a network. When data is sent from one device to another across a network, it is sent as a packet that contains information about where the packet is going, where it's coming from, and the content of the message. Think about data packets like a piece of physical mail. Imagine you want to send a letter to a friend. The envelope will need to have the address where you want the letter to go and your return address. Inside the envelope is a letter that contains the message that you want your friend to read. A data packet is very similar to a physical letter. It contains a header that includes the Internet Protocol address, the IP address, and the media access control, or MAC, address of the destination device. It also includes a protocol number that tells the receiving device what to do with the information in the packet. Then there's the body of the packet, which contains the message that needs to be transmitted to the receiving device. Finally, at the end of the packet, there's a footer, similar to a signature on a letter, the footer signals to the receiving device that the packet is finished.

* The movement of data packets across a network can provide an indication of how well the network is performing. Network performance can be measured by bandwidth.

Bandwidth - refers to the amount of data a device receives every second. You can calculate bandwidth by dividing the quantity of data by the time in seconds. Speed refers to the rate at which data packets are received or downloaded. Security personnel are interested in network bandwidth and speed because if either are irregular, it could be an indication of an attack. Packet sniffing is the practice of capturing and inspecting data packets across the network.

Packet sniffing is the practice of capturing and inspecting data packets across the network. Communication on the network is important for sharing resources and data because it allows organizations to function effectively. 

TCP/IP model:

* Communication protocols and devices used to communicate with each other across the internet. This is called the TCP/IP model.

TCP/IP - stands for Transmission Control Protocol and Internet Protocol. TCP/IP is the standard model used for network communication. 

TCP - stands for Transmission Control Protocol, is an internet communication protocol that allows two devices to form a connection and stream data. The protocol includes a set of instructions to organize data, so it can be sent across a network. It also establishes a connection between two devices and makes sure that packets reach their appropriate destination.

IP - stands for Internet Protocol. The IP in TCP/IP stands for Internet Protocol. IP has a set of standards used for routing and addressing data packets as they travel between devices on a network. Included in the Internet Protocol (IP) is the IP address that functions as an address for each private network.

* When data packets are sent and received across a network, they are assigned a port.

Port - Within the operating system of a network device, a port is a software-based location that organizes the sending and receiving of data between devices on a network. Ports divide network traffic into segments based on the service they will perform between two devices. The computers sending and receiving these data segments know how to prioritize and process these segments based on their port number.

* This is like sending a letter to a friend who lives in an apartment building. The mail delivery person not only knows how to find the building, but they also know exactly where to go in the building to find the apartment number where your friend lives. Data packets include instructions that tell the receiving device what to do with the information. These instructions come in the form of a port number. Port numbers allow computers to split the network traffic and prioritize the operations they will perform with the data. 

Port numbers (common):

* Port 25 - Email
* Port 443 - Secure internet communication
* Port 20 - Large file transfers 

The four layers of TCP/IP model:

TCP/IP model - A framework used to visualize how data is organized and transmitted across the network. The TCP/IP model has four layers.

Layers of the TCP/IP model:

1. Network access layer - The network access layer deals with creation of data packets and their transmission across a network. This includes hardware devices connected to physical cables and switches that direct data to its destination.

2. Internet layer - The internet layer is where IP addresses are attached to data packets to indicate the location of the sender and receiver. The internet layer also focuses on how networks connect to each other. For example, data packets containing information that determine whether they will stay on the LAN or will be sent to a remote network, like the internet.

3. Transport layer - The transport layer includes protocols to control the flow of traffic across a network. These protocols permit or deny communication with other devices and include information about the status of the connection. Activities of this layer include error control, which ensures data is flowing smoothly across the network.

4. Application layer - Protocols determine how the data packets will interact with receiving devices. Functions that are organized at application layer include file transfers and email services.

* Knowing how the TCP/IP model organizes network activity allows security professionals to monitor and secure against risks.

Learn more about the TCP/IP model:

* As a security professional, it's important that you understand the TCP/IP model because all communication on a network is organized using network protocols. Network protocols are a language that systems use to communicate with each other. In order for two network systems to successfully communicate with each other, they need to use the same protocol. The two most common models available are the TCP/IP and the OSI model. These models are a representative guideline of how network communications work together and move throughout the network and the host. The examples provided in this course will follow the TCP/IP model.

The TCP/IP model
The TCP/IP model is a framework used to visualize how data is organized and transmitted across a network. This model helps network engineers and network security analysts conceptualize processes on the network and communicate where disruptions or security threats occur. 

The TCP/IP model has four layers: network access layer, internet layer, transport layer, and application layer. When troubleshooting issues on the network, security professionals can analyze and deduce which layer or layers an attack occurred based on what processes were involved in an incident. 

Network access layer 
The network access layer, sometimes called the data link layer, organizes sending and receiving data frames within a single network. This layer corresponds to the physical hardware involved in network transmission. Hubs, modems, cables, and wiring are all considered part of this layer. The address resolution protocol (ARP) is part of the network access layer. ARP assists IP with directing data packets on the same physical network by mapping IP addresses to MAC addresses on the same physical network.

Internet layer
The internet layer, sometimes referred to as the network layer, is responsible for ensuring the delivery to the destination host, which potentially resides on a different network. The internet layer determines which protocol is responsible for delivering the data packets. Here are some of the common protocols that operate at the internet layer:

Internet Protocol (IP). IP sends the data packets to the correct destination and relies on the Transmission Control Protocol/User Datagram Protocol (TCP/UDP) to deliver them to the corresponding service. IP packets allow communication between two networks. They are routed from the sending network to the receiving network. The TCP/UDP retransmits any data that is lost or corrupt.


Internet Control Message Protocol (ICMP). The ICMP shares error information and status updates of data packets. This is useful for detecting and troubleshooting network errors. The ICMP reports information about packets that were dropped or that disappeared in transit, issues with network connectivity, and packets redirected to other routers.

Transport layer
The transport layer is responsible for reliably delivering data between two systems or networks. TCP and UDP are the two transport protocols that occur at this layer. 

Transmission Control Protocol 
The TCP ensures that data is reliably transmitted to the destination service. TCP contains the port number of the intended destination service, which resides in the TCP header of an TCP/IP packet.

User Datagram Protocol 
The UDP is used by applications that are not concerned with the reliability of the transmission. Data sent over UDP is not tracked as extensively as data sent using TCP. Because UDP does not establish network connections, it is used mostly for performance-sensitive applications that operate in real time, such as video streaming.

Application layer
The application layer in the TCP/IP model is similar to the application, presentation, and session layers of the OSI model. The application layer is responsible for making network requests or responding to requests. This layer defines which internet services and applications any user can access. Some common protocols used on this layer are: 

Hypertext Transfer Protocol (HTTP)

Simple Mail Transfer Protocol (SMTP)

Secure Shell (SSH)

File Transfer Protocol (FTP)

Domain name system (DNS)

Application layer protocols rely on underlying layers to transfer the data across the network.

The OSI visually organizes network protocols into different layers. Network professionals often use this model to communicate with each other about potential sources of problems or security threats when they occur. 

The TCP/IP model combines multiple layers of the OSI model. There are many similarities between the two models. Both models define standards for networking and divide the network communication process into different layers. The TCP/IP model is a simplified version of the OSI model.

Key takeaways
Both the TCP/IP and OSI models are conceptual models that help network professionals visualize network processes and protocols in regards to data transmission between two or more systems. The TCP/IP model contains four layers, and the OSI model contains seven layers.
- [13 fields within the header of an IPv4 packet](https://github.com/user-attachments/assets/965e148d-3b18-493e-8499-b863ed713bec)
![The OSI model](https://github.com/user-attachments/assets/b61c974f-2f88-48a3-a047-a1c91d913ad0)

- Network troubleshooting tools: ping, traceroute
- [Network hardening tools.xlsx](https://github.com/user-attachments/files/20075116/Network.hardening.tools.xlsx)

  [Network security hardening diagram](https://github.com/user-attachments/assets/5398fe98-4ff2-4d26-b918-03d694ed1f34)


- Intro to cloud computing and shared responsibility!
- [New Risks from 2017 to 2021 (OWASP common attack types)](https://github.com/user-attachments/assets/458560d3-9a9c-4efc-b4e5-48c7f6fb499b)
