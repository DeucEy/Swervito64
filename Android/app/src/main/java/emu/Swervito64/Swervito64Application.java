package emu.Swervito64;

import android.content.Context;
import android.content.res.Resources;

public class Swervito64Application extends android.app.Application
{
    private static Swervito64Application m_instance;

    @Override
    public void onCreate()
    {
        super.onCreate();
        m_instance = this;
    }
    
    public static Context getAppContext()
    {
        return m_instance;
    }
    
    public static Resources getAppResources()
    {
        return m_instance.getResources();
    }
}
