//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <connectivity_plus/connectivity_plus_windows_plugin.h>
#include <responsive_builder_kit/responsive_builder_kit_plugin_c_api.h>
#include <rz_dio_client/rz_dio_client_plugin_c_api.h>
#include <rz_library_utilities/rz_library_utilities_plugin_c_api.h>
#include <rz_template_set_1/rz_template_set_1_plugin_c_api.h>
#include <rz_theme_set_1/rz_theme_set_1_plugin_c_api.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  ConnectivityPlusWindowsPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("ConnectivityPlusWindowsPlugin"));
  ResponsiveBuilderKitPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("ResponsiveBuilderKitPluginCApi"));
  RzDioClientPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("RzDioClientPluginCApi"));
  RzLibraryUtilitiesPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("RzLibraryUtilitiesPluginCApi"));
  RzTemplateSet_1PluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("RzTemplateSet_1PluginCApi"));
  RzThemeSet_1PluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("RzThemeSet_1PluginCApi"));
}
