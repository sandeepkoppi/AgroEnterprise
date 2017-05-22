/*
 * Decompiled with CFR 0_114.
 * 
 * Could not load the following classes:
 *  dao.DAO
 *  modal.AddInvestment
 *  modal.Login
 *  modal.SellingDetails
 */
package service;

import dao.DAO;
import java.sql.SQLException;
import java.util.ArrayList;
import modal.AddInvestment;
import modal.Login;
import modal.SellingDetails;

public class Service {
    public boolean login(Login e) throws ClassNotFoundException, SQLException {
        DAO ob = new DAO();
        return ob.login(e);
    }

    public boolean addInvestment(AddInvestment ai) throws ClassNotFoundException, SQLException {
        DAO ob = new DAO();
        return ob.addInvestment(ai);
    }

    public ArrayList<AddInvestment> viewInvestment() throws ClassNotFoundException, SQLException {
        DAO ob = new DAO();
        return ob.viewInvestment();
    }

    public boolean updateInvestment(AddInvestment ai) throws ClassNotFoundException, SQLException {
        DAO ob = new DAO();
        return ob.updateInvestment(ai);
    }

    public boolean DeleteInvestment(AddInvestment ai) throws ClassNotFoundException, SQLException {
        DAO ob = new DAO();
        return ob.deleteInvestment(ai);
    }

    public boolean addSelling(SellingDetails sd) throws ClassNotFoundException, SQLException {
        DAO ob = new DAO();
        return ob.addSelling(sd);
    }

    public ArrayList<SellingDetails> viewSellingDetails() throws ClassNotFoundException, SQLException {
        DAO ob = new DAO();
        return ob.viewSellingDetails();
    }

    public boolean updateSelling(SellingDetails sd) throws ClassNotFoundException, SQLException {
        DAO ob = new DAO();
        return ob.updateSelling(sd);
    }
}
