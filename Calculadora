import java.util.Scanner; // Scanner
 
public class Calculadora{
  public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        double res = 0;
        String operacion;
        boolean comprobar = false;
 
        do{
            //Validacion de los numeros digitados por el usuario.
            
            String numero1;
            do {
                System.out.println("\n Digite por favor el primer número de la operación. ");
                numero1 = scan.nextLine();
            } while (!numero1.matches("[+-]?[\\d]*[.]?[\\d]+"));
            double nume1 = Double.parseDouble(numero1);
            double n1 = new Double(numero1);
            // con esto finalizamos la validacion numero 1.
 
            do {
                System.out.println("\n ¿Que operación desea hacer? (Solo coloque un signo)");
                System.out.println("Teniendo en cuenta que: \n + = sumar \n - = restar \n"
                        + " x = multiplicar \n / = dividir");
            operacion = scan.nextLine();
                if (operacion.equals("+") || operacion.equals("-") || operacion.equals("x") ||
                    operacion.equals("X") || operacion.equals("/")) {
                    comprobar = true;
                }else { comprobar = false; }
            } while (comprobar != true);
 
            // Validacion del segundo numero digitado por el usuario 2.
            String numero2;
            do {
                System.out.println("\n Digite por favor el primer número de la operación.");
                numero2 = scan.nextLine();
            } while (!numero2.matches("[+-]?[\\d]*[.]?[\\d]+"));
            double nume2 = Double.parseDouble(numero2);
            double n2 = new Double(numero2);
            // Fcon esto finalizamos la validacion numero 1.
 
            do{
                comprobar = true;
                switch(operacion){
                    case "+":
                        res = n1 + n2;
                        break;
                    case "-":
                        res = n1 - n2;
                        break;
                    case "x":
                    case "X":
                        res = n1 * n2;
                        break;
                    case "/":
                        /* Ciclo para eviar que el usuario divida por cero y que el programa ejecute una division por cero */
                        while(n2 == 0){
                                 do {
                                    System.err.println(" En el denominador se encuentra \n"
                                            + "un cero, para evitar errores coloca otro número.");
                                    numero2 = scan.nextLine();
                                }while (!numero2.matches("[+-]?[\\d]*[.]?[\\d]+"));
                                    nume2 = Double.parseDouble(numero2);
                                    n2 = new Double(numero2);
                        }
                        res = n1 / n2;
                        break;
                }
            }while(comprobar != true);
 
            System.out.println("(" + numero1 + ") " + operacion + " (" + numero2 + ")" + " = " + res);
            System.out.println("\n ¿Desea hacer alguna otra operación? \n");
            System.out.println(" [s/n]");
            do{
                comprobar = true;
                operacion = scan.nextLine();
 
                switch (operacion) {
                    case "s":
                    case "S":
                    case "n":
                    case "N":
                        break;
                    default:
                        System.err.println("\n Error, ponga un literal valido. \n");
                        comprobar = false;
                }
            }while(comprobar != true);
        }while(operacion.equals("s") || operacion.equals("S"));
  }
}
