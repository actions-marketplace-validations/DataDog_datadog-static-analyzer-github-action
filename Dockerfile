FROM ghcr.io/datadog/datadog-static-analyzer:latest

# Note: `datadog/datadog-static-analyzer` container pre-installs datadog/datadog-ci. Until it can be
# refactored to not do this, we need to manually update @datadog/datadog-ci here.
RUN npm install -g @datadog/datadog-ci@^3 && npm list -g @datadog/datadog-ci

ENTRYPOINT ["github-action.sh"]
