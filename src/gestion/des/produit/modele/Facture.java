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
public class Facture {
    public int N_fact;
   public String nom_prenom_forn;
  public   float	montant_facture;
   public String date_facture;
  

    public Facture(int N_fact,String nom_prenom_forn, float montant_facture, String date_facture) {
        this.N_fact = N_fact;
        this.nom_prenom_forn = nom_prenom_forn;
        this.montant_facture = montant_facture;
        this.date_facture = date_facture;
        
    }

    public int getN_fact() {
        return N_fact;
    }

    public String getNom_prenom_forn() {
        return nom_prenom_forn;
    }

    public float getMontant_facture() {
        return montant_facture;
    }

    

    public String getDate_facture() {
        return date_facture;
    }

    
    
}
