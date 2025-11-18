package emu.Swervito64.settings;

import emu.Swervito64.R;
import emu.Swervito64.jni.NativeExports;
import emu.Swervito64.jni.SettingsID;

public class SettingsFragment extends BaseSettingsFragment
{
    @Override
    protected int getXml() 
    {
        if (NativeExports.SettingsLoadBool(SettingsID.UserInterface_BasicMode.toString()))
        {
            return R.xml.settings_basic;
        }
        return R.xml.settings;
    }

    @Override
    protected int getTitleId() 
    {
        return R.string.preferences;
    }
}
