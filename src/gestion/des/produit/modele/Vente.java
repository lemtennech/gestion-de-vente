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
    private int qnt;
    private String date;
    private int fact;

    public Vente( String nom_prenom, String designation, float montant, int qnt, String date, int fact) {
       
        this.nom_prenom = nom_prenom;
        this.designation = designation;
        this.montant = montant;
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