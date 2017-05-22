/*
 * Decompiled with CFR 0_114.
 * 
 * Could not load the following classes:
 *  javax.servlet.RequestDispatcher
 *  javax.servlet.ServletException
 *  javax.servlet.ServletRequest
 *  javax.servlet.ServletResponse
 *  javax.servlet.annotation.WebServlet
 *  javax.servlet.http.HttpServlet
 *  javax.servlet.http.HttpServletRequest
 *  javax.servlet.http.HttpServletResponse
 *  modal.AddInvestment
 *  modal.Login
 *  modal.SellingDetails
 *  service.Service
 */
package contoller;

import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modal.AddInvestment;
import modal.Login;
import modal.SellingDetails;
import service.Service;

@WebServlet(value={"/Controller"})
public class Controller
extends HttpServlet {
    private static final long serialVersionUID = 1;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean i;
        Service s;
        AddInvestment ai;
        ArrayList al;
        SellingDetails sd;
        System.out.println("In controller");
        String action = request.getParameter("action");
        RequestDispatcher rd = null;
        if ("login".equals(action)) {
            Login e = new Login();
            e.setUserName(request.getParameter("uname"));
            e.setPassword(request.getParameter("pswd"));
            System.out.println("in login");
            s = new Service();
            try {
                i = s.login(e);
                if (i) {
                    rd = request.getRequestDispatcher("options.jsp");
                    rd.forward((ServletRequest)request, (ServletResponse)response);
                } else {
                    rd = request.getRequestDispatcher("loginFail.jsp");
                    rd.forward((ServletRequest)request, (ServletResponse)response);
                }
            }
            catch (Exception e1) {
                e1.printStackTrace();
            }
        }
        if ("add".equals(action)) {
            ai = new AddInvestment();
            ai.setDate(request.getParameter("date"));
            ai.setPurpose(request.getParameter("purpose"));
            ai.setName(request.getParameter("name"));
            ai.setAmount(Double.valueOf(Double.parseDouble(request.getParameter("amount"))));
            System.out.println("in addInvestment");
            s = new Service();
            try {
                i = s.addInvestment(ai);
                if (i) {
                    rd = request.getRequestDispatcher("Success.jsp");
                    rd.forward((ServletRequest)request, (ServletResponse)response);
                } else {
                    rd = request.getRequestDispatcher("Failure.jsp");
                    rd.forward((ServletRequest)request, (ServletResponse)response);
                }
            }
            catch (Exception e1) {
                e1.printStackTrace();
            }
        }
        if ("view".equals(action)) {
            ai = new AddInvestment();
            al = new ArrayList();
            Service s2 = new Service();
            try {
                al = s2.viewInvestment();
                if (al.isEmpty()) {
                    rd = request.getRequestDispatcher("Failure.jsp");
                    rd.forward((ServletRequest)request, (ServletResponse)response);
                } else {
                    request.setAttribute("al", (Object)al);
                    rd = request.getRequestDispatcher("ViewInvestment.jsp");
                    rd.forward((ServletRequest)request, (ServletResponse)response);
                }
            }
            catch (Exception e1) {
                e1.printStackTrace();
            }
        }
        if ("update".equals(action)) {
            ai = new AddInvestment();
            ai.setSerial_No(Integer.parseInt(request.getParameter("Serial_No")));
            ai.setDate(request.getParameter("date"));
            ai.setPurpose(request.getParameter("purpose"));
            ai.setName(request.getParameter("name"));
            ai.setAmount(Double.valueOf(Double.parseDouble(request.getParameter("amount"))));
            System.out.println("in updateInvestment");
            s = new Service();
            try {
                i = s.updateInvestment(ai);
                if (i) {
                    rd = request.getRequestDispatcher("Success.jsp");
                    rd.forward((ServletRequest)request, (ServletResponse)response);
                } else {
                    rd = request.getRequestDispatcher("Failure.jsp");
                    rd.forward((ServletRequest)request, (ServletResponse)response);
                }
            }
            catch (Exception e1) {
                e1.printStackTrace();
            }
        }
        if ("delete".equals(action)) {
            ai = new AddInvestment();
            ai.setSerial_No(Integer.parseInt(request.getParameter("Serial_No")));
            ai.setDate(request.getParameter("date"));
            ai.setPurpose(request.getParameter("purpose"));
            ai.setName(request.getParameter("name"));
            ai.setAmount(Double.valueOf(Double.parseDouble(request.getParameter("amount"))));
            System.out.println("in deleteInvestment");
            s = new Service();
            try {
                i = s.DeleteInvestment(ai);
                if (i) {
                    rd = request.getRequestDispatcher("Delete.jsp");
                    rd.forward((ServletRequest)request, (ServletResponse)response);
                } else {
                    rd = request.getRequestDispatcher("Failure.jsp");
                    rd.forward((ServletRequest)request, (ServletResponse)response);
                }
            }
            catch (Exception e1) {
                e1.printStackTrace();
            }
        }
        if ("addSellingDetails".equals(action)) {
            sd = new SellingDetails();
            sd.setDate(request.getParameter("date"));
            sd.setcVillage(request.getParameter("villageName"));
            sd.setCname(request.getParameter("customerName"));
            sd.setContact(request.getParameter("customerContact"));
            sd.setpType(request.getParameter("productType"));
            sd.setTotalPlants(Float.parseFloat(request.getParameter("totalPlants")));
            sd.setEachCost(Float.parseFloat(request.getParameter("eachCost")));
            sd.setTotalCost(Float.parseFloat(request.getParameter("totalCost")));
            sd.setAmountPaid(Float.parseFloat(request.getParameter("amountPaid")));
            sd.setBalance(Float.parseFloat(request.getParameter("balanceAmount")));
            System.out.println("in addSellingDetails");
            s = new Service();
            try {
                i = s.addSelling(sd);
                if (i) {
                    rd = request.getRequestDispatcher("SuccessSelling.jsp");
                    rd.forward((ServletRequest)request, (ServletResponse)response);
                } else {
                    rd = request.getRequestDispatcher("Failure.jsp");
                    rd.forward((ServletRequest)request, (ServletResponse)response);
                }
            }
            catch (Exception e1) {
                e1.printStackTrace();
            }
        }
        if ("viewSellingDetails".equals(action)) {
            sd = new SellingDetails();
            al = new ArrayList();
            Service s3 = new Service();
            try {
                al = s3.viewSellingDetails();
                if (al.isEmpty()) {
                    rd = request.getRequestDispatcher("Failure.jsp");
                    rd.forward((ServletRequest)request, (ServletResponse)response);
                } else {
                    request.setAttribute("al", (Object)al);
                    rd = request.getRequestDispatcher("viewSellingDetails.jsp");
                    rd.forward((ServletRequest)request, (ServletResponse)response);
                }
            }
            catch (Exception e1) {
                e1.printStackTrace();
            }
        }
        if ("updateSellingDetails".equals(action)) {
            sd = new SellingDetails();
            sd.setCustomerId(Integer.parseInt(request.getParameter("customerID")));
            sd.setDate(request.getParameter("date"));
            sd.setcVillage(request.getParameter("villageName"));
            sd.setCname(request.getParameter("customerName"));
            sd.setContact(request.getParameter("customerContact"));
            sd.setpType(request.getParameter("productType"));
            sd.setTotalPlants(Float.parseFloat(request.getParameter("totalPlants")));
            sd.setEachCost(Float.parseFloat(request.getParameter("eachCost")));
            sd.setTotalCost(Float.parseFloat(request.getParameter("totalCost")));
            sd.setAmountPaid(Float.parseFloat(request.getParameter("amountPaid")));
            sd.setBalance(Float.parseFloat(request.getParameter("balanceAmount")));
            System.out.println("in updateSelling");
            s = new Service();
            try {
                i = s.updateSelling(sd);
                if (i) {
                    rd = request.getRequestDispatcher("Success.jsp");
                    rd.forward((ServletRequest)request, (ServletResponse)response);
                } else {
                    rd = request.getRequestDispatcher("Failure.jsp");
                    rd.forward((ServletRequest)request, (ServletResponse)response);
                }
            }
            catch (Exception e1) {
                e1.printStackTrace();
            }
        }
    }
}
