// Copyright Epic Games, Inc. All Rights Reserved.

using UnrealBuildTool;

public class DrJit : ModuleRules
{
    public DrJit(ReadOnlyTargetRules Target) : base(Target)
    {
        Type = ModuleType.External;

        string RootPath = Target.UEThirdPartySourceDirectory + "DrJit";
        PublicSystemIncludePaths.Add(RootPath + "/Include");
    }
}
