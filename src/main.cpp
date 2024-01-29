#include "main.hpp"

#include <nvse/prefix.h>

#include <nvse/PluginAPI.h>

extern "C" DLLEXPORT bool NVSEAPI NVSEPlugin_Query(const NVSEInterface *nvse, PluginInfo *info)
{
    info->infoVersion = PluginInfo::kInfoVersion;

    info->name = "NVSEPlugin";

    info->version = 1;

    return true;
}

extern "C" DLLEXPORT bool NVSEAPI NVSEPlugin_Load()
{
    return true;
}
