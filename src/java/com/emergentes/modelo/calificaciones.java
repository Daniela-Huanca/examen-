
package com.emergentes.modelo;

public class calificaciones {
        private int id;
        private String nombre;
        private int p1;
        private int p2;
        private int ef;
        private int nota;
        

    public calificaciones() {
        this.id = 0;
        this.nombre = "";
        this.p1 = 0;
        this.p2= 0;
        this.ef =0;
        this.nota=0;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getP1() {
        return p1;
    }

    public void setP1(int p1) {
        this.p1 = p1;
    }

    public int getP2() {
        return p2;
    }

    public void setP2(int p2) {
        this.p2 = p2;
    }

    public int getEf() {
        return ef;
    }

    public void setEf(int ef) {
        this.ef = ef;
    }

    public int getNota() {
        return nota;
    }

    public void setNota(int nota) {
        this.nota = nota;
    }
    
}