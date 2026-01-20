# Dockerfile for Jekyll development environment
# Based on al-folio's approach for academic websites

FROM ruby:2.7-slim-bullseye

LABEL maintainer="Yijiang Huang"

# Set environment variables
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    BUNDLE_PATH=/usr/local/bundle \
    BUNDLE_JOBS=4

# Install system dependencies
# - build-essential: for compiling native gem extensions
# - git: for gem dependencies that pull from git repos
# - imagemagick & libmagickwand-dev: required for rmagick gem (jekyll-gallery-generator)
# - nodejs: for JavaScript runtime (some Jekyll plugins need it)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    curl \
    imagemagick \
    libmagickwand-dev \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /srv/jekyll

# Install Bundler
RUN gem install bundler -v 2.3.26

# Expose Jekyll's default port and LiveReload port
EXPOSE 4000 35729

# Default command
CMD ["sleep", "infinity"]