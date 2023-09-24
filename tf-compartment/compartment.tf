resource "oci_identity_compartment" "tf-compartment" {
    # Required
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaaeyz6osglt2mohzl4gp276fvodcrzdmctnfjuoqpzvdjuusjqh7gq"
    description = "Compartment for Terraform resources."
    name = "compartment_proyectoPersonal"
}