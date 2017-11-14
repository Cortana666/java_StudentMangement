/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;
/**
 *
 * @author Administrator
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Database{
public Connection conn=null;
public Statement stmt=null;
public ResultSet rs=null;
public PreparedStatement preparedstmt=null;
private static String dbDriver="com.mysql.jdbc.Driver";
private static String dbUrl="jdbc:mysql://localhost:3306/javawebtest";
private static String dbUser="root";
private static String dbPwd="root";
//打开数据库连接
public Database(){}

public static Connection getConnection()
{
java.sql.Connection conn=null;
try
{
Class.forName(dbDriver);
conn=DriverManager.getConnection(dbUrl,dbUser,dbPwd);
}
catch(Exception e)
{
e.printStackTrace();
}
if(conn==null)
{
System.err.println("警告：数据库连接失败！");
}
return  conn;

}

//读取结果集
public ResultSet doQuery(String sql)
{
  try
 {
     conn=Database.getConnection();
     stmt=((java.sql.Connection) conn).createStatement();
     rs=stmt.executeQuery(sql);
 }
catch(SQLException e)
{
     e.printStackTrace();
}
	return rs;
}
			
	//更新数据
	public int Prepared_doUpdate(String sql,String parameters[])           
	{
	int result=0;
	try
	{
	conn=Database.getConnection();
	preparedstmt=conn.prepareStatement(sql);

	if(parameters!=null)	
	{
	for(int i=0;i<parameters.length;i++)
	{
	preparedstmt.setString(i+1,parameters[i]);
				}
	}
	result=preparedstmt.executeUpdate();
			}
	catch(SQLException e)
	{
	e.printStackTrace();
	System.out.println("操作失败");
	result=0;
	}
	return result;
	}

//更新数据
public int doUpdate(String sql)           
{
int result=0;
try
{
conn=Database.getConnection();
stmt=((java.sql.Connection) conn).createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
result=stmt.executeUpdate(sql);
			}
catch(SQLException e)
{
result=0;
			}
return result;
		}

//关闭数据库连接
public void closeConnection()
{
try{
if(rs!=null)
rs.close();
			}
catch(Exception e){
e.printStackTrace();
			}
try
{
if(conn!=null)
((Statement) conn).close();
			}
catch(Exception e){
e.printStackTrace();
			}
		}
}

