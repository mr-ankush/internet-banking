package dao;

import connection.MyCon;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Info;

public class InfoDAO 
{
    public static boolean regInfo(String acc_no, String fname, String lname, String dob)
    {
        try
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "insert into info values(?,?,?,?,?,?,?)";
            ps = con.prepareStatement(sql);
            ps.setString(1,acc_no);
            ps.setString(2,fname);
            ps.setString(3,lname);
            ps.setString(4,"");
            ps.setString(5,"");
            ps.setString(6,dob);
            ps.setString(7,"");
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex)
        {
            Logger.getLogger(InfoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public Info searchUserInfoByAcc_no(String acc_no)
    {
        Info I = new Info();
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            String sql;
            con = MyCon.getConnection();
            sql = "Select * from info where acc_no=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,acc_no);
            rs = ps.executeQuery();
            if(rs.next())
            {
                I.setAcc_no(rs.getString(1));
                I.setFname(rs.getString(2));
                I.setLname(rs.getString(3));
                I.setF_name(rs.getString(4));
                I.setM_name(rs.getString(5));
                I.setDob(rs.getString(6));
                I.setAddress(rs.getString(7));
            }
            else
                I=null;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return I;
    }
}