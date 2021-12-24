/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package evoting.dto;

import java.io.InputStream;

/**
 *
 * @author kumar
 */
public class CandidateDTO {
    private String candidateID;
    private String party;
    private String city;
    private String userid;
    private InputStream symbol;
    public CandidateDTO()
    {
        
    }
    @Override
    public String toString() {
        return "CandidateDTO{" + "candidateID=" + candidateID + ", party=" + party + ", city=" + city + ", userid=" + userid + ", symbol=" + symbol + '}';
    }

    public String getCandidateID() {
        return candidateID;
    }

    public void setCandidateID(String candidateID) {
        this.candidateID = candidateID;
    }

    public String getParty() {
        return party;
    }

    public void setParty(String party) {
        this.party = party;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public InputStream getSymbol() {
        return symbol;
    }

    public void setSymbol(InputStream symbol) {
        this.symbol = symbol;
    }
   
    public CandidateDTO(String candidateID, String party, String city, String userid, InputStream symbol) {
        this.candidateID = candidateID;
        this.party = party;
        this.city = city;
        this.userid = userid;
        this.symbol = symbol;
    }
}
