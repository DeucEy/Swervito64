package emu.Swervito64.settings;

import emu.Swervito64.R;
import androidx.preference.Preference;

public class AdvancedFragment extends BaseSettingsFragment
{
    @Override
    protected int getXml() 
    {
        return R.xml.settings_advanced;
    }

    @Override
    protected int getTitleId() 
    {
        return R.string.advanced_screen_title;
    }
}
