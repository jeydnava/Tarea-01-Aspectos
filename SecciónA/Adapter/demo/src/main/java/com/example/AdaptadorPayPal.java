package com.example;

public class AdaptadorPayPal implements PasarelaPago {
    private PayPal paypal = new PayPal();

    public void procesarPago(double monto) {
        paypal.autenticarUsuario();
        paypal.pagar(monto);
    }
}
