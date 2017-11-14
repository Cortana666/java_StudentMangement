package Test;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@WebService(serviceName = "NewWebService")
public class NewWebService {
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }

    @WebMethod(operationName = "getname")
    public String getname() {
        return "OK";
    }
    
    @WebMethod(operationName = "getData")
    public String getData(String sql) {
        Database javawebtest=new Database();     
        ResultSet r=javawebtest.doQuery(sql);
        String result="";
        try{
            int i=0;    
            JSONArray array=new JSONArray();
            while(r.next())
            {   
                int id=r.getInt("id");
                String name=r.getString("name");
                String sex=r.getString("sex");
                int age=r.getInt("age");
                String idcard=r.getString("idcard");
                String address=r.getString("address");
                i++;

                JSONObject jsonObj = new JSONObject();
                try {
                    jsonObj.put("id", id);
                    jsonObj.put("name", name);
                    jsonObj.put("sex", sex);
                    jsonObj.put("age", age);
                    jsonObj.put("idcard", idcard);
                    jsonObj.put("address", address);
                } catch (JSONException ex) {}
                array.put(jsonObj);
                result = array.toString();
            }
        }catch(SQLException  e){}
        return result;
    }
    
    @WebMethod(operationName = "getData1")
    public String getData1(String sql) {
        Database javawebtest=new Database();     
        ResultSet r=javawebtest.doQuery(sql);
        String result="";
        try{
            int i=0;    
            JSONArray array=new JSONArray();
            while(r.next())
            {   
                String name=r.getString("name");
                String php=r.getString("php");
                String java=r.getString("java");
                String asp=r.getString("asp");
                i++;

                JSONObject jsonObj = new JSONObject();
                try {
                    jsonObj.put("name", name);
                    jsonObj.put("php", php);
                    jsonObj.put("java", java);
                    jsonObj.put("asp", asp);
                } catch (JSONException ex) {}
                array.put(jsonObj);
                result = array.toString();
            }
        }catch(SQLException  e){}
        return result;
    }
    
    

    @WebMethod(operationName = "del")
        public int del(String id) {
            Database javawebtest=new Database();
            int result=javawebtest.doUpdate("call studentdelete("+id+")");
            return result;
        }
        
        
    @WebMethod(operationName = "delgrade")
        public int delgrade(String id) {
            Database javawebtest=new Database();
            int result=javawebtest.doUpdate("call gradedelete("+id+")");
            return result;
        }
    
    @WebMethod(operationName = "update")
        public int update(String sql) {
            Database javawebtest=new Database(); int result=javawebtest.doUpdate(sql); return result;
        }

    @WebMethod(operationName = "updategrade")
        public int updategrade(String sql) {
            Database javawebtest=new Database(); int result=javawebtest.doUpdate(sql); return result;
        }
        
    @WebMethod(operationName = "add")
        public int add(String sql) {
            Database javawebtest=new Database(); int result=javawebtest.doUpdate(sql);
            return result;
        }
        
     @WebMethod(operationName = "login")
    public int login(String sql) {
        Database javawebtest=new Database();     
        ResultSet r=javawebtest.doQuery(sql);
        int result=0;
        try{
            int i=0;    
            JSONArray array=new JSONArray();
            while(r.next())
            {   
                int id=r.getInt("id");
                String user=r.getString("user");
                String password=r.getString("password");
                i++;

                JSONObject jsonObj = new JSONObject();
                try {
                    jsonObj.put("id", id);
                    jsonObj.put("user", user);
                    jsonObj.put("password", password);
                } catch (JSONException ex) {}
                array.put(jsonObj);
                int length = array.toString().length();
                result = length;
            }
        }catch(SQLException  e){}
        return result;
    }
}
