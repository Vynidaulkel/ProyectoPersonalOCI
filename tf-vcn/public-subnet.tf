# Source from https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_subnet

resource "oci_core_subnet" "vcn-public-subnet"{

  # Required
  compartment_id = "ocid1.compartment.oc1..aaaaaaaaanuexwp2hslm6ihctfgrgtkwbn2ozsixptvdn6b7gfnb23bts2ya"
  vcn_id = module.vcn.vcn_id
  cidr_block = "10.0.0.0/24"
 
  # Optional
  display_name = "public-subnet"
  security_list_ids = [oci_core_security_list.public-security-list.id]
}