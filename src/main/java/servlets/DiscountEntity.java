/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

/**
 *
 * @author pedago
 */
public class DiscountEntity {
    private float taux;
    private String code;
    
    public DiscountEntity(String code, float taux) {
        this.code = code;
        this.taux = taux;
    }
    
    public String getCode() {
        return this.code;
    }
    
    public float getTaux() {
        return this.taux;
    }
}
