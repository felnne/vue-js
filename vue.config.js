const SentryCliPlugin = require("@sentry/webpack-plugin");

module.exports = {
  configureWebpack: {
    plugins: [
      new SentryCliPlugin({
        include: "dist/",
        release: "new-demo"
      })
    ]
  }
};
