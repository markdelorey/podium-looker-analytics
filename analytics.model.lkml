connection: "redshift"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: top_navigation_reports {
  join: users {
    sql_on: ${users.id} = ${top_navigation_reports.user_id} ;;
    relationship:  many_to_one
  }
  join: organizations {
    sql_on:  ${organizations.id} = ${users.organization_id} ;;
    relationship:  many_to_one
  }
}

explore: organizations {}
explore: users {}
