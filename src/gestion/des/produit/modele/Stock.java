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
public class Stock {
    private final int N_prod;
    private final String designation;
    private final String categorie;
    private final String unite;
    private final int unite_d;
    private final int qnt;
    private final int alerte;
    private final float prix_vent;
    private final float prix_achat;
   

    public Stock( int N_prod, String designation, String categorie, String unite,int unite_d, int qnt, int alerte,  float prix_vent, float prix_achat) {
        this.N_prod = N_prod;
        this.designation = designation;
        this.categorie = categorie;
        this.unite = unite;
        this.unite_d = unite_d;
        this.qnt = qnt;
        this.alerte = alerte;
        this.prix_vent = prix_vent;
        this.prix_achat = prix_achat;
        
    }

    /**
     * @return the N_prod
     */
    public int getN_prod() {
        return N_prod;
    }

    /**
     * @return the designation
     */
    public String getDesignation() {
        return designation;
    }

    /**
     * @return the categorie
     */
    public String getCategorie() {
        return categorie;
    }

    /**
     * @return the unite
     */
    public String getUnite() {
        return unite;
    }

    /**
     * @return the unite_d
     */
    public int getUnite_d() {
        return unite_d;
    }

    /**
     * @return the qnt
     */
    public int getQnt() {
        return qnt;
    }

    /**
     * @return the alerte
     */
    public int getAlerte() {
        return alerte;
    }

    /**
     * @return the prix_vent
     */
    public float getPrix_vent() {
        return prix_vent;
    }

    /**
     * @return the prix_achat
     */
    public float getPrix_achat() {
        return prix_achat;
    }

    
    

}
