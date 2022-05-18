# future main.tf
terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "4.21.0"
    }
  }
}

resource "google_cloudbuild_trigger" "bck_build_trigger" {
  name           = "Auto-Annotator"
  description    = "Edit links to interesting projects and docs to become annotate-able"
  disabled       = false
  ignored_files  = []
  included_files = []

  timeouts {}

  pubsub_config {
    topic = google_pubsub_topic.bck_gcs_pubsub.id
  }

  source_to_build {
    uri       = "https://github.com/DXCanas/futurehack-2022-dxcanas"
    ref       = "master"
    repo_type = "GITHUB"
  }

  build {

    options {
      dynamic_substitutions = true
    }

    # pull response out into HTML file, save to shared dir
    # step {
    # }

    # Take HTML from above, inject hypothes.is ahead of appropriate URLS, save to new file, will be new email body
    # Observe article sources, to be fed to NR.
    # step {
    # }

    # Send email body from above to end point
    # step {
    # }



  }
}
