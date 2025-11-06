FROM mattermost/mattermost-team-edition:latest



# Copy your custom server code into the image

COPY . /mattermost



# (Optional) Install dependencies, build assets, etc.

# RUN cd /mattermost && make build-linux



# Set working directory

WORKDIR /mattermost



# Expose the default Mattermost port

EXPOSE 8065



# Start Mattermost

CMD ["bin/mattermost"]

