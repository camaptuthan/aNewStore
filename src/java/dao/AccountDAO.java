/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Account;

/**
 *
 * @author admin
 */
public class AccountDAO {

    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public Account getAccount(String phone, String pass) {
        try {
            String sql = "SELECT * FROM Accounts WHERE phonenumber = ? AND [password] = ?";

            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, phone);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }

    public Account getAccountByPhone(String phone) {
        try {
            String sql = "SELECT * FROM Accounts WHERE phonenumber = ?";

            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, phone);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }

    public int createAccount(String name, String pass, String phone) {
        try {
            String sql = "INSERT INTO [dbo].[Accounts]\n"
                    + "           ([userName]\n"
                    + "           ,[passWord]\n"
                    + "           ,[phonenumber]\n"
                    + "           ,[isAdmin])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,0)";

            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, pass);
            ps.setString(3, phone);
            return ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return 0;
    }

    public int selectAccountReturnID(String phone, String pass) {
        try {
            String sql = "SELECT * FROM Accounts WHERE phonenumber = ? "
                    + "AND passWord = ?";

            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, phone);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return 0;
    }

    public static void main(String[] args) {
        int a;
//        a = new AccountDAO().selectAccountReturnID(phone, pass);
//        System.out.println(a);
    }

}

