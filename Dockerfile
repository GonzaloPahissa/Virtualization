#< get official image of kali linux
FROM kalilinux/kali-rolling

# Update the image
RUN apt-get update

# Install the following packages for our custom image
RUN apt-get install -y \
    nmap 
   
# Each student must fill this file with the correct information
#LABEL authors = "GonzaloArguedasPahissa 22048152"
#LABEL version = "1.0"
#LABEL description = "Dockerfile for a custom image of Kali Linux OS"


# Set credentials for the root user, ROOT = all privileges, 21535220 = password
ENV USER root
ENV PASSWORD 22048152

# Reduce the size of the image by removing nmap, metasploit
RUN apt-get clean

# Expose ports for nmap and metasploit
EXPOSE 400 500

# Run the following commands when the container is created
CMD ["bash"]

# Build the image
# docker build -t custom-kali-image-21535220 .
# Run the container
# docker run -it --rm --name custom-kali-container-21535220 custom-kali-image-21535220


