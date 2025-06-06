package com.example;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public class AdapterAOP {
    pointcut usoPasarelaPago(PasarelaPago p, double monto): 
        call(void PasarelaPago.procesarPago(..)) && target(p) && args(monto);

    void around(PasarelaPago p, double monto): usoPasarelaPago(p, monto) {
        if (p instanceof AdaptadorPayPal) {
            PayPal paypal = new PayPal();
            paypal.autenticarUsuario();
            paypal.pagar(monto);
        } else {
            proceed(p, monto); // Ejecutar comportamiento original
        }
    }
}
