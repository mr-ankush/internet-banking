package dao;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Admin;
import connection.MyCon;

public class AdminDAO 
{
    public static boolean checkLogin(String username, String password)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            //Admin A = new Admin();
            String sql;
            con = MyCon.getConnection();
            sql = "select * from admin where username=? && password=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,username);
            ps.setString(2,password);
            rs = ps.executeQuery();
            if(rs.next())  
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public Admin searchAddminByUsername(String username)
    {
        Admin A = new Admin();
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            String sql;
            con = MyCon.getConnection();
            sql = "Select * from admin where username=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,username);
            rs = ps.executeQuery();
            if(rs.next())
            {
                A.setUsername(rs.getString(1));
                A.setPassword(rs.getString(2));
                A.setAdmin(rs.getString(3));
            }
            else
                A=null;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return A;
    }
}