package emu.Swervito64.settings;

import emu.Swervito64.R;

public class GameSettingsFragment extends BaseSettingsFragment
{
    @Override
    protected int getXml() 
    {
        return R.xml.game_settings;
    }

    @Override
    protected int getTitleId() 
    {
        return R.string.preferences;
    }
}
