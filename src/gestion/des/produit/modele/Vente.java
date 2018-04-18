/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion.des.produit.modele;

/**
 *
 * @author AmineGasa
 */
public class Vente {

    
    private String nom_prenom;
    private String designation;
    
    private float montant;
    private float gain;
    private int qnt;
    private String date;
    private int fact;

    public Vente( String nom_prenom, String designation, float montant, float gain, int qnt, String date, int fact) {
       
        this.nom_prenom = nom_prenom;
        this.designation = designation;
        this.montant = montant;
        this.gain = gain;
        this.qnt = qnt;
        this.date = date;
        this.fact = fact;
    }

    public int getFact(){
        return fact;
    }

    /**
     * @return the nom_prenom
     */
    public String getNom_prenom() {
        return nom_prenom;
    }

    public float getGain() {
        return gain;
    }

    public void setNom_prenom(String nom_prenom) {
        this.nom_prenom = nom_prenom;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public void setMontant(float montant) {
        this.montant = montant;
    }

    public void setGain(float gain) {
        this.gain = gain;
    }

    public void setQnt(int qnt) {
        this.qnt = qnt;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setFact(int fact) {
        this.fact = fact;
    }

    /**
     * @return the designation
     */
    public String getDesignation() {
        return designation;
    }

    /**
     * @return the montant
     */
    public float getMontant() {
        return montant;
    }

    /**
     * @return the qnt
     */
    public int getQnt() {
        return qnt;
    }

    /**
     * @return the date
     */
    public String getDate() {
        return date;
    }

   
    

}