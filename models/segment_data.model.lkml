connection: "segment"

# include all the views
include: "/views/**/*.view"

datagroup: segment_data_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: segment_data_default_datagroup

explore: checkout_step_completed {
  join: users {
    type: left_outer
    sql_on: ${checkout_step_completed.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: checkout_step_completed_view {
  join: users {
    type: left_outer
    sql_on: ${checkout_step_completed_view.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: checkout_step_viewed {
  join: users {
    type: left_outer
    sql_on: ${checkout_step_viewed.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: checkout_step_viewed_view {
  join: users {
    type: left_outer
    sql_on: ${checkout_step_viewed_view.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: identifies {
  join: users {
    type: left_outer
    sql_on: ${identifies.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: identifies_view {
  join: users {
    type: left_outer
    sql_on: ${identifies_view.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: order_completed {
  join: users {
    type: left_outer
    sql_on: ${order_completed.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: order_completed_view {
  join: users {
    type: left_outer
    sql_on: ${order_completed_view.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: pages {
  join: users {
    type: left_outer
    sql_on: ${pages.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: pages_view {
  join: users {
    type: left_outer
    sql_on: ${pages_view.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: product_added {
  join: users {
    type: left_outer
    sql_on: ${product_added.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: product_added_view {
  join: users {
    type: left_outer
    sql_on: ${product_added_view.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: product_clicked {
  join: users {
    type: left_outer
    sql_on: ${product_clicked.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: product_clicked_view {
  join: users {
    type: left_outer
    sql_on: ${product_clicked_view.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: product_list_viewed {
  join: users {
    type: left_outer
    sql_on: ${product_list_viewed.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: product_list_viewed_view {
  join: users {
    type: left_outer
    sql_on: ${product_list_viewed_view.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: product_removed {
  join: users {
    type: left_outer
    sql_on: ${product_removed.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: product_removed_view {
  join: users {
    type: left_outer
    sql_on: ${product_removed_view.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: product_viewed {
  join: users {
    type: left_outer
    sql_on: ${product_viewed.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: product_viewed_view {
  join: users {
    type: left_outer
    sql_on: ${product_viewed_view.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: tracks {
  join: users {
    type: left_outer
    sql_on: ${tracks.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: tracks_view {
  join: users {
    type: left_outer
    sql_on: ${tracks_view.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: users {}

explore: users_view {}
