package dao;
import connection.MyCon;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Statement;

public class StatementDAO 
{
    public static boolean UserStatement(String create_table)
    {
        try
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = create_table;
            ps = con.prepareStatement(sql);
            //ps.setString(1,acc_no);
            if(ps.executeUpdate()>-1)
                return true;
        }
        catch (SQLException ex)
        {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public static boolean firstEntry(String query)
    {
        try
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = query;
            ps = con.prepareStatement(sql);
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex)
        {
            Logger.getLogger(InfoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public Statement modBal(String query) throws Exception
    {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql;
        con = MyCon.getConnection();
        sql = query;
        ps = con.prepareStatement(sql);
        rs = ps.executeQuery();
        Statement S = new Statement();
        if(rs.next())
        {
            S.setDate(rs.getString(2));
            S.setParticulars(rs.getString(3));
            S.setDebit(rs.getString(4));
            S.setCredit(rs.getString(5));
            S.setBalance(rs.getString(6));
        }
        else
            S=null;
        return S;
    }
    public List<Statement> miniStatement(String query)
    {
        List<Statement> Mylist = new ArrayList<Statement>();
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            String sql;
            con = MyCon.getConnection();
            sql = query;
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next())
            {
                Statement S = new Statement();
                S.setDate(rs.getString(2));
                S.setParticulars(rs.getString(3));
                S.setDebit(rs.getString(4));
                S.setCredit(rs.getString(5));
                S.setBalance(rs.getString(6));
                Mylist.add(S);
            }
        } 
        catch (SQLException ex) 
        {
            Logger.getLogger(StatementDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Mylist;
    }
}