# Networking for Self-Hosted Services with Tailscale, NextDNS, and DNS Rewrites

2024-10-20

A while ago, I decided it was finally time to start consistently self-hosting some services. To do that, however, I needed to figure out a networking setup that would allow me to meet the following criteria:

1. I want networking to be handled privately. I don't want to have to worry about all of the dangers that come with things being exposed to the public internet, and almost nothing I'll be hosting would need to be accessible from the public internet.

2. I want to be able to access all of my services from anywhere. I'm a college student, and as a result am always out and about. If a service is only accessible from my apartment, it may as well not exist.

3. I want everything to use SSL where possible. Some services require serving them over SSL, and overall it's just nicer to not have to deal with the warning pop-ups everywhere.

With all that in mind, I ended up settling on the following setup:

- **Tailscale** is used to keep my traffic private. All of my client and servers are connected to my Tailnet, and server firewalls are configured to only accept Tailscale traffic.
- **NextDNS** is used for DNS rewrites, allowing me to easily reroute subdomains to different hosts' Tailscale IPs
- To get SSL without having machines exposed to the internet and without public DNS records, **DNS challenges** are used to provision SSL certificates.

Let's talk a little bit more about each of these:
