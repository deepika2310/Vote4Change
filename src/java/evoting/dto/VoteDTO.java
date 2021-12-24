/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package evoting.dto;

/**
 *
 * @author kumar
 */
public class VoteDTO {
     private String candidateid;
     private String voterId; 
  
    @Override
    public String toString() {
        return "VoteDTO{" + "candidateid=" + candidateid + ", voterId=" + voterId + '}';
    }

    public VoteDTO(String candidateid, String voterId) {
        this.candidateid = candidateid;
        this.voterId = voterId;
    }

    public String getCandidateid() {
        return candidateid;
    }

    public void setCandidateid(String candidateid) {
        this.candidateid = candidateid;
    }

    public String getVoterId() {
        return voterId;
    }

    public void setVoterId(String voterId) {
        this.voterId = voterId;
    }
}
