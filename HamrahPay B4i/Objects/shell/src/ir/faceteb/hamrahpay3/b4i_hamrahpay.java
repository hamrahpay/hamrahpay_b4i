
package ir.faceteb.hamrahpay3;

import java.io.IOException;
import anywheresoftware.b4a.BA;
import anywheresoftware.b4a.pc.PCBA;
import anywheresoftware.b4a.pc.RDebug;
import anywheresoftware.b4a.pc.RemoteObject;
import anywheresoftware.b4a.pc.RDebug.IRemote;
import anywheresoftware.b4a.pc.Debug;

public class b4i_hamrahpay implements IRemote{
	public static b4i_hamrahpay mostCurrent;
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
		mostCurrent = new b4i_hamrahpay();
        remoteMe = RemoteObject.declareNull("ir.faceteb.hamrahpay3.b4i_hamrahpay");
        //anywheresoftware.b4a.pc.RapidSub.moduleToObject.put("ir.faceteb.hamrahpay3.b4i_hamrahpay", "ir.faceteb.hamrahpay3.b4i_hamrahpay");
	}
    public static void main (String[] args) throws Exception {
		new RDebug(args[0], Integer.parseInt(args[1]), Integer.parseInt(args[2]), Integer.parseInt(args[3]));
		RDebug.INSTANCE.waitForTask();

	}
    private static PCBA pcBA = new PCBA(null, b4i_hamrahpay.class);
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
		pcBA = new PCBA(this, b4i_hamrahpay.class);
        try {
            BA.init();
            b4i_hamrahpay_subs_0._process_globals();

        } catch(Exception e) {
            throw new RuntimeException(e);
        }
		return pcBA;
	}
public static RemoteObject __c = RemoteObject.declareNull("B4ICommon");
public static RemoteObject _app = RemoteObject.declareNull("B4IApplicationWrapper");
public static RemoteObject _pay_req = RemoteObject.declareNull("b4i_httpjob");
public static RemoteObject _pay_verify = RemoteObject.declareNull("b4i_httpjob");
public static RemoteObject _hud1 = RemoteObject.declareNull("iHUD");
public static RemoteObject _pay_status = RemoteObject.createImmutable(false);
public static RemoteObject _pay_request_url = RemoteObject.createImmutable("");
public static RemoteObject _pay_verify_url = RemoteObject.createImmutable("");
public static RemoteObject _pay_code = RemoteObject.createImmutable("");
public static RemoteObject _pay_url = RemoteObject.createImmutable("");
public static RemoteObject _status = RemoteObject.createImmutable("");
public static RemoteObject _error = RemoteObject.createImmutable(false);
public static RemoteObject _mail = RemoteObject.createImmutable("");
public static RemoteObject _verification_type = RemoteObject.createImmutable("");
public static RemoteObject _product_sku = RemoteObject.createImmutable("");
public static b4i_main _main = null;
public static b4i_payment_page _payment_page = null;
public static b4i_httputils2service _httputils2service = null;
public static b4i_mainpage _mainpage = null;
  public Object[] GetGlobals() {
		return new Object[] {"App",b4i_hamrahpay._app,"error",b4i_hamrahpay._error,"HttpUtils2Service",Debug.moduleToString(b4i_httputils2service.class),"hud1",b4i_hamrahpay._hud1,"mail",b4i_hamrahpay._mail,"Main",Debug.moduleToString(b4i_main.class),"mainpage",Debug.moduleToString(b4i_mainpage.class),"pay_code",b4i_hamrahpay._pay_code,"pay_req",b4i_hamrahpay._pay_req,"pay_request_url",b4i_hamrahpay._pay_request_url,"pay_status",b4i_hamrahpay._pay_status,"pay_url",b4i_hamrahpay._pay_url,"pay_verify",b4i_hamrahpay._pay_verify,"pay_verify_url",b4i_hamrahpay._pay_verify_url,"Payment_page",Debug.moduleToString(b4i_payment_page.class),"product_sku",b4i_hamrahpay._product_sku,"status",b4i_hamrahpay._status,"verification_type",b4i_hamrahpay._verification_type};
}
}