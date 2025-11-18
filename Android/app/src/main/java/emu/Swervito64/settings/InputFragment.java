package emu.Swervito64.settings;

import emu.Swervito64.R;

public class InputFragment extends BaseSettingsFragment
{
    @Override
    protected int getXml()
    {
        return R.xml.setting_input;
    }

    @Override
    protected int getTitleId()
    {
        return R.string.input_screen_title;
    }
}
