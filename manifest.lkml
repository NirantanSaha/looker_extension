# Minimal LookML required to REGISTER the extension with Looker.

# No data models / explores / views are defined here — this file only
# tells Looker "load this React bundle as an extension".
#
# Place this manifest at the root of a LookML project in your Looker instance.
# For dev, point `url` at your Vite dev server. For prod, set `file` to the
# built bundle.js committed into the same LookML project.

project_name: "looker_conversational_extension"

application: conversational_chat {
  label: "Conversational Chat"
  # Dev mode (live reload from Vite):
  # url: "http://localhost:8080/bundle.js"
  # Prod mode (uncomment after `npm run build` and replace url above):
  file: "bundle.js"

  entitlements: {
    local_storage: yes
    navigation: yes
    new_window: yes
    use_form_submit: yes
    use_embeds: yes
    use_iframes: yes
    core_api_methods: [
      "me",
      "all_dashboards",
      "dashboard",
      "all_lookml_models",
      "lookml_model_explore",
      "search_dashboards",
      "create_dashboard_element",
      "update_dashboard_element",
      "delete_dashboard_element",
      "dashboard_element",
      "run_inline_query",
      "run_query",
      "query"
    ]
    external_api_urls: [
      "https://geminidataanalytics.googleapis.com",
      "https://bigquery.googleapis.com",
      "https://oauth2.googleapis.com",
      "http://localhost:8080",
      "https://cdn.jsdelivr.net"
    ]
    oauth2_urls: [
      "https://accounts.google.com/o/oauth2/v2/auth"
    ]
    scoped_user_attributes: [
      "google_cloud_project_id",
      "google_oauth_token",
      "google_oauth_client_id"
    ]
  }
}
