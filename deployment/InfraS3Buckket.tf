module "Use1NetS3Bucket" {
  source      = "./modules/s3-bucket"
  bucket_name = "infra-automation-state-file"
  status      = "Enabled"
  tags = {
    Environment = "inetsystemsinc"
    Costcenter  = "inet-ent"
    Contact     = "info@inetsystemsinc.com"
    Importance  = "Critical"
    ManagedBy   = "iNET Cloud Engineering"
    Module      = "inetsystemsincdotcom"
    Description = "inetsystemsinc - S3 Bucket for store Terraform state file - AWS subscription - iNET SYSTEMS Lab Account"
  }
}

########################################################
# End AWS S3 Bucket to store the Terraform state file. #
########################################################