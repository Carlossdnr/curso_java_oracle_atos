/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;

/**
 *  POJO para datos
 * @author USUARIO
 */
public class Persona implements Serializable{  
    
    private String nombre;

    private int edad;
    
    private String password;
    
    private String email;
    
    private int id;

    public Persona(String nombre, int edad) {
        this.nombre = nombre;
        this.edad = edad;
    }

    public Persona(String nombre, int edad, String password, String email , int id) {
        this.nombre = nombre;
        this.edad = edad;
        this.password = password;
        this.email = email;
        this.id = id;
    }

    public Persona(String nombre, int edad, String email, int id, String password) {
        this.nombre = nombre;
        this.edad = edad;
        this.password = password;
        this.email = email;
        this.id = id;
    }

  

    

    /**
     * Get the value of edad
     *
     * @return the value of edad
     */
    public int getEdad() {
        return edad;
    }

    /**
     * Set the value of edad
     *
     * @param edad new value of edad
     */
    public void setEdad(int edad) {
        this.edad = edad;
    }

    /**
     * Get the value of nombre
     *
     * @return the value of nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * Set the value of nombre
     *
     * @param nombre new value of nombre
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }




}
