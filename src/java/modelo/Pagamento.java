/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author GueGui
 */
public class Pagamento {
int id_pag;
double valor;
String n_cartao;

    public int getId_pag() {
        return id_pag;
    }

    public void setId_pag(int id_pag) {
        this.id_pag = id_pag;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public String getN_cartao() {
        return n_cartao;
    }

    public void setN_cartao(String n_cartao) {
        this.n_cartao = n_cartao;
    }

}
