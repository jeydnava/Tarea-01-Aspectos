package com.example;

public class AdaptadorPayPal implements PasarelaPago {
    private static AdaptadorPayPal instancia;
    private PayPal paypal;

    private AdaptadorPayPal() {
        paypal = new PayPal();
    }

    public static AdaptadorPayPal getInstance() {
        if (instancia == null) {
            instancia = new AdaptadorPayPal();
        }
        return instancia;
    }

    public void procesarPago(double monto) {
        paypal.autenticarUsuario();
        paypal.pagar(monto);
    }
}

