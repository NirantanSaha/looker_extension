project_name: "looker_conversational_extension"

application: conversational_chat {
  label: "Conversational Chat"
  # Dev mode (live reload from Vite):
  url: "http://localhost:8080/src/index.tsx"
  # Prod mode (uncomment after `npm run build` and replace url above):
  # file: "bundle.js"

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
      "search_dashboards"
    ]
    external_api_urls: [
      "https://geminidataanalytics.googleapis.com",
      "https://oauth2.googleapis.com"
    ]
    oauth2_urls: [
      "https://accounts.google.com/o/oauth2/v2/auth"
    ]
    scoped_user_attributes: [
      "google_cloud_project_id",
      "google_oauth_token"
    ]
  }
}
