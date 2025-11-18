#pragma once
#include <Common/TraceModulesCommon.h>

enum TraceModuleSwervito64
{
    TraceSettings = MaxTraceModuleCommon,
    TraceUnknown,
    TraceAppInit,
    TraceAppCleanup,
    TraceN64System,
    TracePlugins,
    TraceVideoPlugin,
    TraceAudioPlugin,
    TraceControllerPlugin,
    TraceRSPPlugin,
    TraceRSP,
    TraceAudio,
    TraceRegisterCache,
    TraceRecompiler,
    TraceTLB,
    TraceUserInterface,
    TraceRomList,
    MaxTraceModuleSwervito64,
};
