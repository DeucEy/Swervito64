package emu.Swervito64.util;

import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import emu.Swervito64.Swervito64Application;

public final class Utility
{
    public static boolean close(Closeable closeable) 
    {
        if (closeable != null)
        {
            try 
            {
                closeable.close();
                return true;
            } 
            catch (IOException e) 
            {
            }
        }
        return false;
    }
    
    public static String readAsset(String assetName, String defaultS)
    {
        InputStream is = null;
        BufferedReader r = null;
        try 
        {
            is = Swervito64Application.getAppResources().getAssets().open(assetName);
            r = new BufferedReader(new InputStreamReader(is, "UTF8"));
            StringBuilder sb = new StringBuilder();
            String line = r.readLine();
            if(line != null)
            {
                sb.append(line);
                line = r.readLine();
                while(line != null) 
                {
                    sb.append('\n');
                    sb.append(line);
                    line = r.readLine();
                }
            }
            return sb.toString();
        }
        catch (IOException e)
        {
            return defaultS;
        }
        finally 
        {
            close(is);
            close(r);
        }
    }
}
