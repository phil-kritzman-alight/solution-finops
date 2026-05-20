application         = "quicksight"
service             = "athena_context"
environment         = "prod"
is_production       = true

bucket_name         = "alight-fin-ops-join-context-files-tf"
suspend_versioning  = true

payer               = "internal"
ou_security_type    = "internal"

aws_region          = "us-east-1"

tags = {
  DataClassification = "InternalUse"
  BusinessServiceName = "Governance FinOps Prod"
}