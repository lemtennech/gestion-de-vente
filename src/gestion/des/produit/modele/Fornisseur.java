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
public class Fornisseur {
     public int N_for;
   public String nom_prenom;
   public String telephone ;
   public String adresse;
    public float credit;

    public Fornisseur(String nom_prenom, String telephone, String adresse, float credit) {
        this.nom_prenom = nom_prenom;
        this.telephone = telephone;
        this.adresse = adresse;
        this.credit = credit;
    }

    public Fornisseur(int N_for, String nom_prenom, String telephone, String adresse, float credit) {
        this.N_for = N_for;
        this.nom_prenom = nom_prenom;
        this.telephone = telephone;
        this.adresse = adresse;
        this.credit = credit;
    }

    public int getN_for() {
        return N_for;
    }

    public String getNom_prenom() {
        return nom_prenom;
    }

    public String getTelephone() {
        return telephone;
    }

    public String getAdresse() {
        return adresse;
    }

    public float getCredit() {
        return credit;
    }
     
    
}  
