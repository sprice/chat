<?php
/**
 * @file
 * ab_chat.features.user_permission.inc
 */

/**
 * Implements hook_user_default_permissions().
 */
function ab_chat_user_default_permissions() {
  $permissions = array();

  // Exported permission: access content
  $permissions['access content'] = array(
    'name' => 'access content',
    'roles' => array(
      0 => 'authenticated user',
    ),
    'module' => 'node',
  );

  return $permissions;
}
