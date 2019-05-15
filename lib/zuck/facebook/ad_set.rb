require 'zuck/facebook/ad_creative'

module Zuck
  class AdSet < RawFbObject
    # Known keys as per
    # [fb docs](https://developers.facebook.com/docs/reference/ads-api/adset/v3.2)
    # TODO: the allowed keys for read / create / update are not identitical
    # use intersection for now, but this needs to be handled in all classes
    # and should be split into allowed_keys per action
    known_keys :account_id,
               :adlabels,
               :adset_schedule,
               :attribution_spec,
               :bid_amount,
               :bid_info,
               :bid_strategy,
               :billing_event,
               :budget_remaining,
               :campaign,
               :campaign_id,
               :configured_status,
               :created_time,
               :creative_sequence,
               :daily_budget,
               :destination_type,
               :effective_status,
               :end_time,
               :frequency_control_specs,
               :id,
               :instagram_actor_id,
               :lifetime_budget,
               :lifetime_imps,
               :name,
               :optimization_goal,
               :pacing_type,
               :promoted_object,
               :recommendations,
               :recurring_budget_semantics,
               :rf_prediction_id,
               :rtb_flag,
               :start_time,
               :status,
               :targeting,
               :time_based_ad_rotation_id_blocks,
               :time_based_ad_rotation_intervals,
               :updated_time,
               :use_new_app_click

    parent_object :ad_account, as: :account_id
    list_path :adsets
    connections :ad_groups, :ad_creatives
  end
end
