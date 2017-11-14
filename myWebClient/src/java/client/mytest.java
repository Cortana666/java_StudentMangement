package client;


import test.NewWebService;
import test.NewWebService_Service;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



/**
 *
 * @author catindog
 */
public class mytest {
    public String myResponse()
    {  
        NewWebService_Service p=new NewWebService_Service();
        NewWebService a=p.getNewWebServicePort(); 

        return a.getData("select * from information");
    } 
    
    public String myResponse1(String id)
    {  
        NewWebService_Service p=new NewWebService_Service();
        NewWebService a=p.getNewWebServicePort(); 
        return a.getData("select * from information where id="+id);
    }
    
    public String gradeselect(String id)
    {  
        NewWebService_Service p=new NewWebService_Service();
        NewWebService a=p.getNewWebServicePort();  
        return a.getData1("select * from information,grade where information.id = grade.gid and gid="+id);
    }
    
    public String myResponse2(String sql)
    {  
        NewWebService_Service p=new NewWebService_Service();
        NewWebService a=p.getNewWebServicePort();  
        return a.getData(sql);
    }
    
    public Boolean del(String id)
    {  
NewWebService_Service p=new NewWebService_Service();
        NewWebService a=p.getNewWebServicePort();  
        if(a.del(id)>0)
        return true;
        else
        return false;        
    }
    
    public Boolean delgrade(String id)
    {  
NewWebService_Service p=new NewWebService_Service();
        NewWebService a=p.getNewWebServicePort();  
        if(a.delgrade(id)>0)
        return true;
        else
        return false;        
    }

            
    public Boolean update(String sql)
    {  
        NewWebService_Service p=new NewWebService_Service();
        NewWebService a=p.getNewWebServicePort(); 
        if(a.update(sql)>0)
        return true;
        else
        return false;        
    }
    
    public Boolean updategrade(String sql)
    {  
        NewWebService_Service p=new NewWebService_Service();
        NewWebService a=p.getNewWebServicePort(); 
        if(a.updategrade(sql)>0)
        return true;
        else
        return false;        
    }
    
    public Boolean add(String sql)
    {  
        NewWebService_Service p=new NewWebService_Service();
        NewWebService a=p.getNewWebServicePort(); 
        if(a.add(sql)>0)
        return true;
        else
        return false;        
    }
    
    public Boolean login(String sql)
    {  
        NewWebService_Service p=new NewWebService_Service();
        NewWebService a=p.getNewWebServicePort(); 
        if(a.login(sql)>0)
        return true;
        else
        return false;        
    }
}

