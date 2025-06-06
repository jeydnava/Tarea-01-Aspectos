package com.example;

public class PasarelaBancaria implements PasarelaPago {
    public void procesarPago(double monto) {
        System.out.println("Pago tradicional procesado: $" + monto);
    }
}
