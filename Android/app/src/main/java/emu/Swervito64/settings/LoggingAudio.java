package emu.Swervito64.settings;

import emu.Swervito64.R;

public class LoggingAudio extends BaseSettingsFragment
{
    @Override
    protected int getXml() 
    {
        return R.xml.logging_audio;
    }

    @Override
    protected int getTitleId() 
    {
        return R.string.logging_Audio;
    }
}
