resource "google_storage_bucket" "COLDLINE" {
  name          = "abhi_first_bucket"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true


}

resource "google_storage_bucket_object" "text" {
name = "abhifile.text"
content = "testing script first time"
storage_class = "COLDLINE"
bucket = "${google_storage_bucket.COLDLINE.name}"
}
