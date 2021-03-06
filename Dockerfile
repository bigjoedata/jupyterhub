# Do not forget to pin down the version
FROM jupyterhub/jupyterhub:0.9.6

# Copy the JupyterHub configuration in the container
COPY jupyterhub_config.py .

# Download script to automatically stop idle single-user servers
RUN wget https://raw.githubusercontent.com/jupyterhub/jupyterhub/0.9.6/examples/cull-idle/cull_idle_servers.py

# Install dependencies (for advanced authentication and spawning)
RUN pip install \
    dockerspawner==0.11.0 \
    oauthenticator==0.8.1
