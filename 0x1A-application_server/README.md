Application Server


This directory contains configuration files and scripts for setting up an application server. The application server is designed to work with Nginx to serve dynamic content for a web application. The configurations provided enable Nginx to reverse proxy requests to different backend services based on the request URL.

Key features include:
- Serving static files from a specified directory.
- Redirecting certain requests to external URLs.
- Proxying requests to backend services for dynamic content generation.
- Handling custom error pages.

The configurations are tailored for deployment on a server with specific IP addresses and expect the backend services to be running on designated ports. Adjustments may be required to fit your deployment environment.

Refer to individual configuration files for detailed setup and customization options.

