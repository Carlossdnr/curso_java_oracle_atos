/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg05_gesusu_modpruebas;

import java.util.ArrayList;
import modelo.logica.ServicioUsuarios;
/**
 *
 * @author USUARIO
 */
public class Main {
    
    static void mostrarResultado(ServicioUsuarios.Resultado res, String nombre){
        System.out.print(" - Prueba " + nombre + ": ");
        switch (res) {
            case CamposMal:
                System.out.println("Campos Mal ");
                break;
            case ErrorDB:
                System.out.println("Campos Mal ");
                break;
            case NoLogin:
                System.out.println("Campos Mal ");
                break;
            case Ok:
                System.out.println("Campos Mal ");
                break;
        }
    }
    static void listar(){
        ArrayList<Usuario> todos = ServicioUsuarios.getInstancia().ObtenerTodos();
        
        System.out.println("ServicioUsuarios.getInstancia().obtenerTodos():");
        for (Usuario u : todos) {
            System.out.println();
        }
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       System.out.println("Probando módulo modelo: ");
    }
    
}
