
package ir.faceteb.hamrahpay3;

import java.io.IOException;
import anywheresoftware.b4a.BA;
import anywheresoftware.b4a.pc.PCBA;
import anywheresoftware.b4a.pc.RDebug;
import anywheresoftware.b4a.pc.RemoteObject;
import anywheresoftware.b4a.pc.RDebug.IRemote;
import anywheresoftware.b4a.pc.Debug;

public class b4i_payment_page implements IRemote{
	public static b4i_payment_page mostCurrent;
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
		mostCurrent = new b4i_payment_page();
        remoteMe = RemoteObject.declareNull("ir.faceteb.hamrahpay3.b4i_payment_page");
        //anywheresoftware.b4a.pc.RapidSub.moduleToObject.put("ir.faceteb.hamrahpay3.b4i_payment_page", "ir.faceteb.hamrahpay3.b4i_payment_page");
	}
    public static void main (String[] args) throws Exception {
		new RDebug(args[0], Integer.parseInt(args[1]), Integer.parseInt(args[2]), Integer.parseInt(args[3]));
		RDebug.INSTANCE.waitForTask();

	}
    private static PCBA pcBA = new PCBA(null, b4i_payment_page.class);
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
		pcBA = new PCBA(this, b4i_payment_page.class);
        try {
            BA.init();
            b4i_payment_page_subs_0._process_globals();

        } catch(Exception e) {
            throw new RuntimeException(e);
        }
		return pcBA;
	}
public static RemoteObject __c = RemoteObject.declareNull("B4ICommon");
public static RemoteObject _paymentpage = RemoteObject.declareNull("B4IPage");
public static RemoteObject _app = RemoteObject.declareNull("B4IApplicationWrapper");
public static RemoteObject _webview1 = RemoteObject.declareNull("B4IWebViewWrapper");
public static RemoteObject _addressbar = RemoteObject.declareNull("B4ILabelWrapper");
public static b4i_main _main = null;
public static b4i_hamrahpay _hamrahpay = null;
public static b4i_httputils2service _httputils2service = null;
public static b4i_mainpage _mainpage = null;
  public Object[] GetGlobals() {
		return new Object[] {"addressbar",b4i_payment_page._addressbar,"App",b4i_payment_page._app,"HamrahPay",Debug.moduleToString(b4i_hamrahpay.class),"HttpUtils2Service",Debug.moduleToString(b4i_httputils2service.class),"Main",Debug.moduleToString(b4i_main.class),"mainpage",Debug.moduleToString(b4i_mainpage.class),"paymentpage",b4i_payment_page._paymentpage,"WebView1",b4i_payment_page._webview1};
}
}