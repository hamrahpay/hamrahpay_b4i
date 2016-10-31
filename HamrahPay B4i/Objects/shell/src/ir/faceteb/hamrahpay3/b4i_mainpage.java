
package ir.faceteb.hamrahpay3;

import java.io.IOException;
import anywheresoftware.b4a.BA;
import anywheresoftware.b4a.pc.PCBA;
import anywheresoftware.b4a.pc.RDebug;
import anywheresoftware.b4a.pc.RemoteObject;
import anywheresoftware.b4a.pc.RDebug.IRemote;
import anywheresoftware.b4a.pc.Debug;

public class b4i_mainpage implements IRemote{
	public static b4i_mainpage mostCurrent;
    public static RemoteObject ba;
	public static RemoteObject processBA;
    public static boolean processGlobalsRun;
    public static RemoteObject myClass;
    public static RemoteObject remoteMe;
	
    public RemoteObject getRemoteMe() {
        return remoteMe;    
    }
    
public boolean isSingleton() {
		return true;
	}
    static {
		mostCurrent = new b4i_mainpage();
        remoteMe = RemoteObject.declareNull("ir.faceteb.hamrahpay3.b4i_mainpage");
        //anywheresoftware.b4a.pc.RapidSub.moduleToObject.put("ir.faceteb.hamrahpay3.b4i_mainpage", "ir.faceteb.hamrahpay3.b4i_mainpage");
	}
    public static void main (String[] args) throws Exception {
		new RDebug(args[0], Integer.parseInt(args[1]), Integer.parseInt(args[2]), Integer.parseInt(args[3]));
		RDebug.INSTANCE.waitForTask();

	}
    private static PCBA pcBA = new PCBA(null, b4i_mainpage.class);
	public static RemoteObject runMethod(boolean notUsed, String method, Object... args) throws Exception{
		return (RemoteObject) pcBA.raiseEvent(method.substring(1), args);
	}
    public static void runVoidMethod(String method, Object... args) throws Exception{
		runMethod(false, method, args);
	}
	public static RemoteObject getObject() {
		return remoteMe;
	 }
	public PCBA create(Object[] args) throws ClassNotFoundException{
		ba = (RemoteObject) args[1];
        remoteMe = (RemoteObject) args[2];
        __c = (RemoteObject)args[3];
		pcBA = new PCBA(this, b4i_mainpage.class);
        try {
            BA.init();
            b4i_mainpage_subs_0._process_globals();

        } catch(Exception e) {
            throw new RuntimeException(e);
        }
		return pcBA;
	}
public static RemoteObject __c = RemoteObject.declareNull("B4ICommon");
public static RemoteObject _page1 = RemoteObject.declareNull("B4IPage");
public static RemoteObject _app = RemoteObject.declareNull("B4IApplicationWrapper");
public static RemoteObject _nc = RemoteObject.declareNull("B4INavigationControllerWrapper");
public static RemoteObject _navcontrol = RemoteObject.declareNull("B4INavigationControllerWrapper");
public static RemoteObject _hud1 = RemoteObject.declareNull("iHUD");
public static RemoteObject _buttonpay = RemoteObject.declareNull("B4IButtonWrapper");
public static RemoteObject _label1 = RemoteObject.declareNull("B4ILabelWrapper");
public static b4i_main _main = null;
public static b4i_hamrahpay _hamrahpay = null;
public static b4i_payment_page _payment_page = null;
public static b4i_httputils2service _httputils2service = null;
  public Object[] GetGlobals() {
		return new Object[] {"App",b4i_mainpage._app,"ButtonPay",b4i_mainpage._buttonpay,"HamrahPay",Debug.moduleToString(b4i_hamrahpay.class),"HttpUtils2Service",Debug.moduleToString(b4i_httputils2service.class),"hud1",b4i_mainpage._hud1,"Label1",b4i_mainpage._label1,"Main",Debug.moduleToString(b4i_main.class),"NavControl",b4i_mainpage._navcontrol,"nc",b4i_mainpage._nc,"Page1",b4i_mainpage._page1,"Payment_page",Debug.moduleToString(b4i_payment_page.class)};
}
}