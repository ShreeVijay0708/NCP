import java.sql.*;

public class JDBC_Lab {
    public static void main(String args[])
    {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        }
        catch(ClassNotFoundException e) {
            System .out.println("Class not found "+ e);
        }

        int no_of_rows = 0;
        try {
            Connection con = DriverManager.getConnection
                    ("jdbc:mysql://localhost:3306/ncp","root",
                            "1234");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery
                    ("SELECT * FROM studentinfo where cgpa > 8;");
            System.out.println("Part 1");
            System.out.println("Name   Rollnumber");
            while (rs.next()) {
                System.out.println(rs.getString("name")+"   "+rs.getInt("rollnumber"));
            }
            System.out.println("--------------------------------------------\n\nPart2\nRoll Numbers");
            ResultSet rs2 = stmt.executeQuery
                    ("SELECT * FROM studentinfo where company_placed like \"Infosys\";");
            while (rs2.next()) {
                System.out.println(rs2.getInt("rollnumber"));
            }

            System.out.println("--------------------------------------------\n\nPart3\n");

            rs2=stmt.executeQuery("SELECT * FROM studentinfo order by rollnumber asc ");
            while (rs2.next()) {
                System.out.println(rs2.getString("name")+"--"+rs2.getInt("rollnumber")+"--"+
                        rs2.getInt("age")+"--"+rs2.getFloat("cgpa")+"--"+rs2.getString("company_placed"));
            }

        }
        catch(SQLException e){
            System .out.println("SQL exception occured" + e);
        }
    }
}
