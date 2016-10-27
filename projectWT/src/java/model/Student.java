/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Abhishek
 */
public class Student {
    
    private int srollno;
    private String sfname;
    private String slname;
    private String sdepartment;
    private String semailid;
    private String spassword;
    private double scontact;

    public int getSrollno() {
        return srollno;
    }

    public String getSfname() {
        return sfname;
    }

    public String getSlname() {
        return slname;
    }

    public String getSdepartment() {
        return sdepartment;
    }

    public String getSemailid() {
        return semailid;
    }

    public String getSpassword() {
        return spassword;
    }

    public double getScontact() {
        return scontact;
    }

    public void setSrollno(int srollno) {
        this.srollno = srollno;
    }

    public void setSfname(String sfname) {
        this.sfname = sfname;
    }

    public void setSlname(String slname) {
        this.slname = slname;
    }

    public void setSdepartment(String sdepartment) {
        this.sdepartment = sdepartment;
    }

    public void setSemailid(String semailid) {
        this.semailid = semailid;
    }

    public void setSpassword(String spassword) {
        this.spassword = spassword;
    }

    public void setScontact(long scontact) {
        this.scontact = scontact;
    }



   
    public static Student populateData(HttpServletRequest request, HttpServletResponse response)
    {
        Student c =new Student();
           c.setSfname(request.getParameter("sfname"));
           c.setSlname(request.getParameter("slname"));
           c.setSrollno(Integer.parseInt(request.getParameter("srollno")));
           c.setSpassword(request.getParameter("spassword"));
           c.setSdepartment(request.getParameter("sdepartment"));
           c.setSemailid(request.getParameter("semailid"));
           return c;
    }
    
}
