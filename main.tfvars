application         = "quicksight"
service             = "athena_context"
environment         = "prod"
is_production       = true

bucket_name         = "alight-fin-ops-join-context-files-tf"
suspend_versioning  = true

tags = {
  DataClassification = "InternalUse"
  BusinessServiceName = "Governance FinOps Prod"
}