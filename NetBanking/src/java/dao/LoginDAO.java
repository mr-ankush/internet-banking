package dao;
import connection.MyCon;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Login;

public class LoginDAO 
{
    public boolean signupUser(Login L)
    {
        try
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "insert into login(adhar_no,email,mobile,password,hint) values(?,?,?,?,?)";
            ps = con.prepareStatement(sql);
            ps.setString(1,L.getAdhar_no());
            ps.setString(2,L.getEmail());
            ps.setString(3,L.getMobile());
            ps.setString(4,L.getPassword());
            ps.setString(5,L.getHint());
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex)
        {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public static boolean checkSignup(String adhar_no, String mobile)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            //Admin A = new Admin();
            String sql;
            con = MyCon.getConnection();
            sql = "select * from login where adhar_no=? || mobile=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,adhar_no);
            ps.setString(2,mobile);
            rs = ps.executeQuery();
            if(rs.next())  
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public static boolean checkLogin(String mobile, String password)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            //Admin A = new Admin();
            String sql;
            con = MyCon.getConnection();
            sql = "select * from login where mobile=? && password=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,mobile);
            ps.setString(2,password);
            rs = ps.executeQuery();
            if(rs.next())  
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public Login searchUserByMobile(String mobile)
    {
        Login L = new Login();
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            String sql;
            con = MyCon.getConnection();
            sql = "Select * from login where mobile=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,mobile);
            rs = ps.executeQuery();
            if(rs.next())
            {
                L.setAcc_no(rs.getInt(1));
                L.setAdhar_no(rs.getString(2));
                L.setEmail(rs.getString(3));
                L.setMobile(rs.getString(4));
                L.setPassword(rs.getString(5));
                L.setHint(rs.getString(6));
            }
            else
                L=null;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return L;
    }
    public static boolean checkAuthenticUser(String acc_no, String mobile)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            //Admin A = new Admin();
            String sql;
            con = MyCon.getConnection();
            sql = "select * from login where acc_no=? && mobile=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,acc_no);
            ps.setString(2,mobile);
            rs = ps.executeQuery();
            if(rs.next())  
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
