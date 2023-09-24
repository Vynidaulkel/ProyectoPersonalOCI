# Source from https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_security_list

resource "oci_core_security_list" "public-security-list"{

# Required
  compartment_id = "ocid1.compartment.oc1..aaaaaaaaanuexwp2hslm6ihctfgrgtkwbn2ozsixptvdn6b7gfnb23bts2ya"
  vcn_id = module.vcn.vcn_id

# Optional
  display_name = "security-list-for-public-subnet"
  ingress_security_rules {
      protocol = "all"
      source   = "20.0.1.0/24"  # CIDR de la subred privada
  }

  ingress_security_rules { 
      source = "0.0.0.0/0"
      protocol = "6"
      tcp_options { 
          min = 22
          max = 22
      }
  }

  ingress_security_rules {
      protocol  = "6"
      source = "0.0.0.0/0"
      tcp_options {
          min = 80
          max = 80
      }
  }

  ingress_security_rules {
      protocol  = "6"
      source = "0.0.0.0/0"
      tcp_options {
          min = 443
          max = 443
      }
  }

  ingress_security_rules {
      protocol  = "17"
      source = "0.0.0.0/0"
      udp_options {
          min = 5060
          max = 5060
      }
  }

  ingress_security_rules {
      protocol  = "6"
      source = "0.0.0.0/0"
      tcp_options {
          min = 10000
          max = 20000
      }
  }

  ingress_security_rules {
      protocol = "17"
      source = "0.0.0.0/0"
      udp_options {
          min = 10000
          max = 20000
      }
  }

  ingress_security_rules {
      protocol  = "17"
      source = "0.0.0.0/0"
      udp_options {
          min = 4569
          max = 4569
      }
  }

  egress_security_rules {
      destination = "0.0.0.0/0"
      protocol = "all" 
  }
}
