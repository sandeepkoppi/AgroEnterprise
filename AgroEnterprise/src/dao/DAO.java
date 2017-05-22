/*
 * Decompiled with CFR 0_114.
 * 
 * Could not load the following classes:
 *  dbUtill.DBUtil
 *  modal.AddInvestment
 *  modal.Login
 *  modal.SellingDetails
 */
package dao;

import dbUtill.DBUtil;
import java.io.PrintStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modal.AddInvestment;
import modal.Login;
import modal.SellingDetails;

public class DAO {
    public boolean login(Login e) throws ClassNotFoundException, SQLException {
        System.out.println("In DAO");
        Connection con = DBUtil.getConnection();
        PreparedStatement ps = con.prepareStatement("select * from Login where u_name=? and password=?");
        ps.setString(1, e.getUserName());
        ps.setString(2, e.getPassword());
        ResultSet rs = ps.executeQuery();
        boolean b = rs.next() && rs != null;
        DBUtil.closeConnection((Connection)con, (PreparedStatement)ps);
        return b;
    }

    public boolean addInvestment(AddInvestment ai) throws ClassNotFoundException, SQLException {
        Connection con = DBUtil.getConnection();
        PreparedStatement ps = con.prepareStatement("insert into InvestmentDetails values(InvestmentDetails_sequence.nextval,?,?,?,?)");
        ps.setString(1, ai.getDate());
        ps.setString(2, ai.getPurpose());
        ps.setString(3, ai.getName());
        ps.setDouble(4, ai.getAmount());
        ResultSet rs = ps.executeQuery();
        boolean b = rs.next() && rs != null;
        DBUtil.closeConnection((Connection)con, (PreparedStatement)ps);
        return b;
    }

    public ArrayList<AddInvestment> viewInvestment() throws ClassNotFoundException, SQLException {
        ArrayList<AddInvestment> vList = new ArrayList<AddInvestment>();
        Connection con = DBUtil.getConnection();
        PreparedStatement ps = con.prepareStatement("select * from InvestmentDetails");
        ResultSet rs = ps.executeQuery();
        while (rs.next() && rs != null) {
            Integer Serial_No = rs.getInt(1);
            String date = rs.getString(2);
            String purpose = rs.getString(3);
            String name = rs.getString(4);
            Double amount = rs.getDouble(5);
            AddInvestment view = new AddInvestment();
            view.setSerial_No(Serial_No.intValue());
            view.setDate(date);
            view.setPurpose(purpose);
            view.setName(name);
            view.setAmount(amount);
            vList.add(view);
        }
        DBUtil.closeConnection((Connection)con, (PreparedStatement)ps);
        return vList;
    }

    public boolean updateInvestment(AddInvestment ai) throws ClassNotFoundException, SQLException {
        Connection con = DBUtil.getConnection();
        PreparedStatement ps = con.prepareStatement("update InvestmentDetails set dates=?,purpose=?,name=?,amount=? where serial_no=?");
        ps.setString(1, ai.getDate());
        ps.setString(2, ai.getPurpose());
        ps.setString(3, ai.getName());
        ps.setDouble(4, ai.getAmount());
        ps.setInt(5, ai.getSerial_No());
        ResultSet rs = ps.executeQuery();
        boolean b = rs.next() && rs != null;
        DBUtil.closeConnection((Connection)con, (PreparedStatement)ps);
        return b;
    }

    public boolean deleteInvestment(AddInvestment ai) throws ClassNotFoundException, SQLException {
        Connection con = DBUtil.getConnection();
        PreparedStatement ps = con.prepareStatement("delete from InvestmentDetails where serial_no=?");
        ps.setInt(1, ai.getSerial_No());
        ResultSet rs = ps.executeQuery();
        boolean b = rs.next() && rs != null;
        DBUtil.closeConnection((Connection)con, (PreparedStatement)ps);
        return b;
    }

    public boolean addSelling(SellingDetails sd) throws ClassNotFoundException, SQLException {
        Connection con = DBUtil.getConnection();
        PreparedStatement ps = con.prepareStatement("insert into SellingDetails values(SellingDetails_seq.nextval,?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1, sd.getDate());
        ps.setString(2, sd.getcVillage());
        ps.setString(3, sd.getCname());
        ps.setString(4, sd.getContact());
        ps.setString(5, sd.getpType());
        ps.setFloat(6, sd.getTotalPlants());
        ps.setFloat(7, sd.getEachCost());
        ps.setFloat(8, sd.getTotalCost());
        ps.setFloat(9, sd.getAmountPaid());
        ps.setFloat(10, sd.getBalance());
        ResultSet rs = ps.executeQuery();
        boolean b = rs.next() && rs != null;
        DBUtil.closeConnection((Connection)con, (PreparedStatement)ps);
        return b;
    }

    public ArrayList<SellingDetails> viewSellingDetails() throws ClassNotFoundException, SQLException {
        ArrayList<SellingDetails> vList = new ArrayList<SellingDetails>();
        Connection con = DBUtil.getConnection();
        PreparedStatement ps = con.prepareStatement("select * from SellingDetails");
        ResultSet rs = ps.executeQuery();
        while (rs.next() && rs != null) {
            Integer customerId = rs.getInt(1);
            String date = rs.getString(2);
            String cVillage = rs.getString(3);
            String cname = rs.getString(4);
            String contact = rs.getString(5);
            String pType = rs.getString(6);
            Float totalPlants = Float.valueOf(rs.getFloat(7));
            Float eachCost = Float.valueOf(rs.getFloat(8));
            Float totalCost = Float.valueOf(rs.getFloat(9));
            Float amountPaid = Float.valueOf(rs.getFloat(10));
            Float balance = Float.valueOf(rs.getFloat(11));
            SellingDetails view = new SellingDetails();
            view.setCustomerId(customerId.intValue());
            view.setDate(date);
            view.setcVillage(cVillage);
            view.setCname(cname);
            view.setContact(contact);
            view.setpType(pType);
            view.setTotalPlants(totalPlants.floatValue());
            view.setEachCost(eachCost.floatValue());
            view.setTotalCost(totalCost.floatValue());
            view.setAmountPaid(amountPaid.floatValue());
            view.setBalance(balance.floatValue());
            vList.add(view);
        }
        DBUtil.closeConnection((Connection)con, (PreparedStatement)ps);
        return vList;
    }

    public boolean updateSelling(SellingDetails sd) throws ClassNotFoundException, SQLException {
        Connection con = DBUtil.getConnection();
        PreparedStatement ps = con.prepareStatement("update SellingDetails set dates=?,c_village=?,c_name=?,contact=?,p_type=?,totalplants=?,eachcost=?,totalcost=?,amountpaid=?,balance=? where customer_id=?");
        ps.setString(1, sd.getDate());
        ps.setString(2, sd.getcVillage());
        ps.setString(3, sd.getCname());
        ps.setString(4, sd.getContact());
        ps.setString(5, sd.getpType());
        ps.setFloat(6, sd.getTotalPlants());
        ps.setFloat(7, sd.getEachCost());
        ps.setFloat(8, sd.getTotalCost());
        ps.setFloat(9, sd.getAmountPaid());
        ps.setFloat(10, sd.getBalance());
        ResultSet rs = ps.executeQuery();
        boolean b = rs.next() && rs != null;
        DBUtil.closeConnection((Connection)con, (PreparedStatement)ps);
        return b;
    }
}
