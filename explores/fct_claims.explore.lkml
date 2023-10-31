include: "/views/refinements/refined_dim_organizations.view.lkml"
include: "/views/refinements/refined_dim_patients.view.lkml"
include: "/views/refinements/refined_fct_claims.view.lkml"

explore: fct_claims {
  group_label: "3) Demo Datasets - [Only for Testing]"
  label: "Healthcare - Claims"
  view_label: "Claims"
  hidden: no
  required_access_grants: [see_demohealthcare_explore]

  join: dim_patients {
    view_label: "Patients"
    type: left_outer
    relationship: many_to_one
    sql_on: ${fct_claims.patient_id} = ${dim_patients.patient_id} ;;
  }

  join: dim_organizations {
    view_label: "Organizations"
    type: left_outer
    relationship: many_to_one
    sql_on: ${fct_claims.organization_id} = ${dim_organizations.organization_id} ;;
  }
}
# comment
# external
# test
