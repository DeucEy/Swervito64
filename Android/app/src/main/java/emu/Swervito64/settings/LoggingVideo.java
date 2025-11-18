package emu.Swervito64.settings;

import emu.Swervito64.R;

public class LoggingVideo extends BaseSettingsFragment
{
    @Override
    protected int getXml() 
    {
        return R.xml.logging_video;
    }

    @Override
    protected int getTitleId() 
    {
        return R.string.logging_Video;
    }
}
