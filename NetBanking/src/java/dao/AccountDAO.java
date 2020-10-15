package dao;
import connection.MyCon;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

public class AccountDAO 
{
    public static boolean regAccount(Account A)
    {
        try
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "insert into account values(?,?,?,?,?)";
            ps = con.prepareStatement(sql);
            ps.setString(1,A.getAcc_no());
            ps.setString(2,A.getJ_date());
            ps.setString(3,A.getJ_time());
            ps.setString(4,A.getAcc_type());
            ps.setString(5,A.getKyc());
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex)
        {
            Logger.getLogger(ImageDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public Account searchUserAccountByAcc_no(String acc_no)
    {
        Account A = new Account();
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            String sql;
            con = MyCon.getConnection();
            sql = "Select * from account where acc_no=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,acc_no);
            rs = ps.executeQuery();
            if(rs.next())
            {
                A.setAcc_no(rs.getString(1));
                A.setJ_date(rs.getString(2));
                A.setJ_time(rs.getString(3));
                A.setAcc_type(rs.getString(4));
                A.setKyc(rs.getString(5));
            }
            else
                A=null;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return A;
    }
    public boolean verifiedUser(String verified)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = verified;
            ps = con.prepareStatement(sql);
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}