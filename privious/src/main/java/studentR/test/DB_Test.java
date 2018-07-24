package studentR.test;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class DB_Test {

@Test
public void test() throws Exception {

    Class.forName("com.mysql.jdbc.Driver");


    Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/studentrequest","user1","test123");
    System.out.println(con);
    }
}
