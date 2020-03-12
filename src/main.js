import Vue from 'vue'
import App from './App.vue'
import * as Sentry from "@sentry/browser";
import * as Integrations from "@sentry/integrations";

Vue.config.productionTip = false
Sentry.init({
  dsn: "https://5c7d8e8352444704831f0cd9a573cb94@sentry.io/2825744",
  integrations: [new Integrations.Vue({ Vue, attachProps: true, logErrors: true })],
  release: "new-demo"
});


new Vue({
  render: h => h(App),
}).$mount('#app')
