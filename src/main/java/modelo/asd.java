
package modelo;

import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public class asd {
    public static void main(String[] args) {
        List<String> ordenado = new LinkedList<String>();
         
ordenado.add("A");
ordenado.add("D");
ordenado.add("B");
ordenado.add("B");
         
Collections.sort(ordenado);
         
System.out.println(ordenado.get(1));
    }
   
}
