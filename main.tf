resource "google_storage_bucket" "GCS1" {
   name = "my-project-3-358101-bucket-tf-new"
   location = "us-central1"
   storage_class = "NEARLINE"
   lifecycle_rule {
     action {
       type = "SetStorageClass"
       storage_class = "COLDLINE"
     }
     condition {
       age = 10
     }
   }
}
