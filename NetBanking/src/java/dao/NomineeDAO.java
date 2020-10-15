package dao;

import connection.MyCon;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Nominee;

public class NomineeDAO 
{
    public static boolean regNominee(String acc_no)
    {
        try
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "insert into nominee values(?,?,?,?,?,?)";
            ps = con.prepareStatement(sql);
            ps.setString(1,acc_no);
            ps.setString(2,"");
            ps.setString(3,"");
            ps.setString(4,"");
            ps.setString(5,"");
            ps.setString(6,"");
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex)
        {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public Nominee searchNominee(String acc_no)
    {
        Nominee N = new Nominee();
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            String sql;
            con = MyCon.getConnection();
            sql = "Select * from nominee where acc_no=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,acc_no);
            rs = ps.executeQuery();
            if(rs.next())
            {
                N.setAcc_no(rs.getString(1));
                N.setN_relation(rs.getString(2));
                N.setN_name(rs.getString(3));
                N.setN_dob(rs.getString(4));
                N.setN_mobile(rs.getString(5));
                N.setN_add(rs.getString(6));
            }
            else
                N=null;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return N;
    }
    public boolean updataNominee(Nominee N)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            con = MyCon.getConnection();
            String sql;
            sql = "update nominee set n_relation=?, n_name=?, n_dob=?, n_mobile=?, n_add=? where acc_no=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,N.getN_relation());
            ps.setString(2,N.getN_name());
            ps.setString(3,N.getN_dob());
            ps.setString(4,N.getN_mobile());
            ps.setString(5,N.getN_add());
            ps.setString(6,N.getAcc_no());
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex)
        {
            Logger.getLogger(NomineeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}