# Must have `sentry-cli` installed globally
# Following variable must be passed in
#  SENTRY_AUTH_TOKEN

# 'associate_commits' command disabled
# setup_release: create_release associate_commits upload_sourcemaps

SENTRY_ORG=antarctica
SENTRY_PROJECT=felnne-vue-testing
VERSION=`sentry-cli releases propose-version`

setup_release: create_release upload_sourcemaps

create_release:
	sentry-cli releases -o $(SENTRY_ORG) new -p $(SENTRY_PROJECT) $(VERSION)

associate_commits:
	sentry-cli releases -o $(SENTRY_ORG) -p $(SENTRY_PROJECT) set-commits --auto $(VERSION)

upload_sourcemaps:
	sentry-cli releases -o $(SENTRY_ORG) -p $(SENTRY_PROJECT) files $(VERSION) \
		upload-sourcemaps --url-prefix "~/js" --rewrite --validate dist/js
