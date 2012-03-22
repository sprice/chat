<?php
/**
 * @file
 * ab_chat.views_default.inc
 */

/**
 * Implements hook_views_default_views().
 */
function ab_chat_views_default_views() {
  $export = array();

  $view = new view;
  $view->name = 'shout_box';
  $view->description = '';
  $view->tag = 'default';
  $view->base_table = 'node';
  $view->human_name = 'Shout box';
  $view->core = 7;
  $view->api_version = '3.0';
  $view->disabled = FALSE; /* Edit this to true to make a default view disabled initially */

  /* Display: Master */
  $handler = $view->new_display('default', 'Master', 'default');
  $handler->display->display_options['title'] = 'Shout box';
  $handler->display->display_options['access']['type'] = 'perm';
  $handler->display->display_options['cache']['type'] = 'none';
  $handler->display->display_options['query']['type'] = 'views_query';
  $handler->display->display_options['query']['options']['query_comment'] = FALSE;
  $handler->display->display_options['exposed_form']['type'] = 'basic';
  $handler->display->display_options['pager']['type'] = 'some';
  $handler->display->display_options['pager']['options']['items_per_page'] = '1';
  $handler->display->display_options['style_plugin'] = 'default';
  $handler->display->display_options['row_plugin'] = 'fields';
  /* Relationship: Entity Reference: Referenced Entity */
  $handler->display->display_options['relationships']['field_meeting_shout_box_target_id']['id'] = 'field_meeting_shout_box_target_id';
  $handler->display->display_options['relationships']['field_meeting_shout_box_target_id']['table'] = 'field_data_field_meeting_shout_box';
  $handler->display->display_options['relationships']['field_meeting_shout_box_target_id']['field'] = 'field_meeting_shout_box_target_id';
  $handler->display->display_options['relationships']['field_meeting_shout_box_target_id']['required'] = 0;
  /* Field: Content: Chat */
  $handler->display->display_options['fields']['field_chat']['id'] = 'field_chat';
  $handler->display->display_options['fields']['field_chat']['table'] = 'field_data_field_chat';
  $handler->display->display_options['fields']['field_chat']['field'] = 'field_chat';
  $handler->display->display_options['fields']['field_chat']['relationship'] = 'field_meeting_shout_box_target_id';
  $handler->display->display_options['fields']['field_chat']['alter']['alter_text'] = 0;
  $handler->display->display_options['fields']['field_chat']['alter']['make_link'] = 0;
  $handler->display->display_options['fields']['field_chat']['alter']['absolute'] = 0;
  $handler->display->display_options['fields']['field_chat']['alter']['external'] = 0;
  $handler->display->display_options['fields']['field_chat']['alter']['replace_spaces'] = 0;
  $handler->display->display_options['fields']['field_chat']['alter']['trim_whitespace'] = 0;
  $handler->display->display_options['fields']['field_chat']['alter']['nl2br'] = 0;
  $handler->display->display_options['fields']['field_chat']['alter']['word_boundary'] = 1;
  $handler->display->display_options['fields']['field_chat']['alter']['ellipsis'] = 1;
  $handler->display->display_options['fields']['field_chat']['alter']['strip_tags'] = 0;
  $handler->display->display_options['fields']['field_chat']['alter']['trim'] = 0;
  $handler->display->display_options['fields']['field_chat']['alter']['html'] = 0;
  $handler->display->display_options['fields']['field_chat']['element_label_colon'] = 1;
  $handler->display->display_options['fields']['field_chat']['element_default_classes'] = 1;
  $handler->display->display_options['fields']['field_chat']['hide_empty'] = 0;
  $handler->display->display_options['fields']['field_chat']['empty_zero'] = 0;
  $handler->display->display_options['fields']['field_chat']['hide_alter_empty'] = 1;
  $handler->display->display_options['fields']['field_chat']['field_api_classes'] = 0;
  /* Sort criterion: Content: Post date */
  $handler->display->display_options['sorts']['created']['id'] = 'created';
  $handler->display->display_options['sorts']['created']['table'] = 'node';
  $handler->display->display_options['sorts']['created']['field'] = 'created';
  $handler->display->display_options['sorts']['created']['order'] = 'DESC';
  /* Contextual filter: Content: Nid */
  $handler->display->display_options['arguments']['nid']['id'] = 'nid';
  $handler->display->display_options['arguments']['nid']['table'] = 'node';
  $handler->display->display_options['arguments']['nid']['field'] = 'nid';
  $handler->display->display_options['arguments']['nid']['default_action'] = 'default';
  $handler->display->display_options['arguments']['nid']['default_argument_type'] = 'node';
  $handler->display->display_options['arguments']['nid']['default_argument_skip_url'] = 0;
  $handler->display->display_options['arguments']['nid']['summary']['number_of_records'] = '0';
  $handler->display->display_options['arguments']['nid']['summary']['format'] = 'default_summary';
  $handler->display->display_options['arguments']['nid']['summary_options']['items_per_page'] = '25';
  $handler->display->display_options['arguments']['nid']['specify_validation'] = 1;
  $handler->display->display_options['arguments']['nid']['validate']['type'] = 'node';
  $handler->display->display_options['arguments']['nid']['validate_options']['types'] = array(
    'meeting' => 'meeting',
  );
  $handler->display->display_options['arguments']['nid']['validate_options']['access'] = 0;
  $handler->display->display_options['arguments']['nid']['break_phrase'] = 0;
  $handler->display->display_options['arguments']['nid']['not'] = 0;
  /* Filter criterion: Content: Published */
  $handler->display->display_options['filters']['status']['id'] = 'status';
  $handler->display->display_options['filters']['status']['table'] = 'node';
  $handler->display->display_options['filters']['status']['field'] = 'status';
  $handler->display->display_options['filters']['status']['value'] = 1;
  $handler->display->display_options['filters']['status']['group'] = 1;
  $handler->display->display_options['filters']['status']['expose']['operator'] = FALSE;

  /* Display: Block */
  $handler = $view->new_display('block', 'Block', 'block');
  $export['shout_box'] = $view;

  return $export;
}
