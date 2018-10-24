package guisimexp;

import jess.*;

/**
 *
 * @author Donatto
 */
public class GUISimExp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws JessException {
        // TODO code application logic here
        
        Interfaz ventana = new Interfaz();
        ventana.setVisible(true);
       /* Rete motor;
        motor = new Rete();
        motor.batch("C:\\Users\\OFFICE\\Documents\\NetBeansProjects\\GUISimExp\\src\\guisimexp\\BCR.clp");
        
        String otro = "(experiencia (tiene_exp no))";
        String otro2 = "(salud (tiene_salud no))";
        String instruccion = "(estructura (osea Atletica)(altura Media)(extremidades Medias))";
        String instruccion2 = "(metabolismo (aumento Media)(energia Alta))";
        String instruccion3 = "(cuerpo (peso Medio)(grasa Suficiente))";
        motor.reset();
        
        motor.assertString(otro + otro2);
        
        //motor.assertString(instruccion2);
        //motor.assertString(instruccion3);
       // motor.run();*/
        
    }
    
}
