include "ec2" {
  path           = format("%s/../common/modules/ec2.hcl", dirname(find_in_parent_folders()))
  expose         = true
}

include "root" {
  path = find_in_parent_folders()
}


