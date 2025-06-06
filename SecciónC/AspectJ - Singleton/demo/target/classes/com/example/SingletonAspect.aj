package com.example;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

public aspect SingletonAspect {
    private AdaptadorPayPal instancia;

    pointcut accesoInstancia(): 
        call(static AdaptadorPayPal AdaptadorPayPal.getInstance());

    AdaptadorPayPal around(): accesoInstancia() {
        if (instancia == null) {
            instancia = new AdaptadorPayPal();
        }
        return instancia;
    }
}
